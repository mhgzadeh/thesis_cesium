"""
energy urls
"""

from django.urls import path
from energy.views import test

urlpatterns = [
    path('list/', test)
]
