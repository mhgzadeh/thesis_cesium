"""
projects urls
"""

from django.urls import path
from project.views import test

urlpatterns = [
    path('list/', test)
]
