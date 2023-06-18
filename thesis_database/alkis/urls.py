"""
alkis urls
"""

from django.urls import path
from alkis.views import test

urlpatterns = [
    path('list/', test)
]
