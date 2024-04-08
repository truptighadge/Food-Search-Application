from rest_framework import generics
from .models import Products
from .serializers import ProductsSerializer,ProductToppingsSerializer
from rest_framework import status
from rest_framework.response import Response
from rest_framework import viewsets
from django.db.models import Avg
from rest_framework.pagination import PageNumberPagination
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated


class ProductsViewSet(viewsets.ViewSet):
    authentication_classes=[TokenAuthentication]
    permission_classes = [IsAuthenticated]
    pagination_class = PageNumberPagination
    def list(self, request):
        try:
            rating_min = request.query_params.get('rating_min')
            rating_max = request.query_params.get('rating_max')
            categories = request.query_params.getlist('category')
            toppings = request.query_params.getlist('toppings')
            type = request.query_params.getlist('type')
            queryset = Products.objects.all().order_by('product_id')
            if rating_min is not None:
                queryset = queryset.annotate(avg_rating=Avg('ratings__rating_value')).filter(avg_rating__gte=rating_min)
            if rating_max is not None:
                queryset = queryset.annotate(avg_rating=Avg('ratings__rating_value')).filter(avg_rating__lte=rating_max)
            if categories:
                categories=categories[0].split(',')
                queryset = queryset.filter(product_category__in=categories)
            if type:
                type=type[0].split(',')
                queryset = queryset.filter(veg_non_veg__in=type) 
            if toppings:
                toppings=toppings[0].split(',')
                queryset = queryset.filter(producttoppings__topping__topping_name__in=toppings) 

            paginator = self.pagination_class()
            paginated_queryset = paginator.paginate_queryset(queryset, request)
            serializer = ProductsSerializer(paginated_queryset, many=True)
            if paginated_queryset:
                return paginator.get_paginated_response(serializer.data)
            else:
                return Response({"message": "No food product listings found"}, status=status.HTTP_404_NOT_FOUND)
        except Exception as e:
            return Response({"message": "An error occurred: {}".format(str(e))}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

                



        
    