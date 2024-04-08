from django.urls import path
from .views import ProductsViewSet

urlpatterns = [
    path('', ProductsViewSet.as_view({'get': 'list'})),
]

