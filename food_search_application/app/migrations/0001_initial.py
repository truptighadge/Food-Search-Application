# Generated by Django 5.0.4 on 2024-04-08 04:42

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Products',
            fields=[
                ('product_id', models.AutoField(primary_key=True, serialize=False)),
                ('product_name', models.CharField(max_length=255)),
                ('product_description', models.CharField(max_length=255)),
                ('product_category', models.CharField(max_length=100)),
                ('veg_non_veg', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'products',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Ratings',
            fields=[
                ('rating_id', models.AutoField(primary_key=True, serialize=False)),
                ('rating_value', models.DecimalField(decimal_places=1, max_digits=3)),
            ],
            options={
                'db_table': 'ratings',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Toppings',
            fields=[
                ('topping_id', models.AutoField(primary_key=True, serialize=False)),
                ('topping_name', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'toppings',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ToppingsGroups',
            fields=[
                ('group_id', models.AutoField(primary_key=True, serialize=False)),
                ('group_name', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'toppings_groups',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ProductToppings',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.products')),
                ('topping', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.toppings')),
            ],
            options={
                'db_table': 'product_toppings',
                'managed': True,
            },
        ),
        migrations.AddConstraint(
            model_name='producttoppings',
            constraint=models.UniqueConstraint(fields=('product', 'topping'), name='unique_combination'),
        ),
    ]
