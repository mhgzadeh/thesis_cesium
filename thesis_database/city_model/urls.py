"""
city model urls
"""

from django.urls import path
from city_model.views import test

urlpatterns = [
    path('list/', test)
]
