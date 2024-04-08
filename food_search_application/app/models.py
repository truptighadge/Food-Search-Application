from django.db import models


class Products(models.Model):
    product_id = models.AutoField(primary_key=True)
    product_name = models.CharField(max_length=255)
    product_description = models.CharField(max_length=255)
    product_category = models.CharField(max_length=100)
    veg_non_veg = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'products'


class Ratings(models.Model):
    rating_id = models.AutoField(primary_key=True)
    product = models.ForeignKey(Products, models.DO_NOTHING)
    rating_value = models.DecimalField(max_digits=3, decimal_places=1)

    class Meta:
        managed = False
        db_table = 'ratings'


class Toppings(models.Model):
    topping_id = models.AutoField(primary_key=True)
    group = models.ForeignKey('ToppingsGroups', models.DO_NOTHING)
    topping_name = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'toppings'


class ToppingsGroups(models.Model):
    group_id = models.AutoField(primary_key=True)
    group_name = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'toppings_groups'

class ProductToppings(models.Model):
    product = models.ForeignKey('Products',on_delete=models.CASCADE)
    topping = models.ForeignKey('Toppings',on_delete=models.CASCADE)

    class Meta:
        managed = True
        db_table = 'product_toppings'
        constraints = [
            models.UniqueConstraint(fields=['product', 'topping'], name='unique_combination')
        ]