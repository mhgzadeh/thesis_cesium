"""
gis_fms admin model
"""
from django.contrib.gis import admin
from django.contrib.admin import register
from project.models import Project, Municipality


@register(Project)
class ProjectAdmin(admin.OSMGeoAdmin):
    list_display = ['id']


@register(Municipality)
class ProjectAdmin(admin.OSMGeoAdmin):
    list_display = ['id', 'name']
