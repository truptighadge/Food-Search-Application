from rest_framework import serializers
from .models import Products, Toppings, Ratings,ToppingsGroups,ProductToppings
from django.db.models import Avg
from django.db import connection

# store procedure
def get_customization_data(product_id):
    with connection.cursor() as cursor:
        cursor.callproc('GetCustomizationData', [product_id])
        columns = [col[0] for col in cursor.description]
        return [dict(zip(columns, row)) for row in cursor.fetchall()]


class ToppingsGroupsSerializer(serializers.ModelSerializer):
    class Meta:
        model = ToppingsGroups
        fields = '__all__'

class ToppingsSerializer(serializers.ModelSerializer):
    group = ToppingsGroupsSerializer(many=True)

    class Meta:
        model = Toppings
        fields = '__all__'

class ProductsSerializer(serializers.ModelSerializer):
    ratings = serializers.SerializerMethodField()
    customization = serializers.SerializerMethodField()
    class Meta:
        model = Products
        fields = ['product_id', 'product_name', 'product_description','ratings', 'product_category','customization', 'veg_non_veg' ]
        
    def get_ratings(self, obj):
        ratings_queryset = Ratings.objects.filter(product_id=obj)
        avg_rating = ratings_queryset.aggregate(avg_rating=Avg('rating_value'))['avg_rating']
        return avg_rating
    def get_customization(self, obj):
        product_id = obj.product_id
        customization_data = get_customization_data(product_id)
        return customization_data

class ProductToppingsSerializer(serializers.ModelSerializer):
    topping = ToppingsSerializer(many=True)
    product=ProductsSerializer(many=True)
    class Meta:
        model = ProductToppings
        fields=['product_id','topping_id']