from django.db import models
from django.contrib.gis.db import models as gis_models
from django.utils.translation import ugettext_lazy as _
from project.models import Project


class Alkis(models.Model):
    gml_id = models.CharField(max_length=256, verbose_name=_('GML id'), unique=True, blank=True, null=True)
    project = models.ForeignKey(
        Project, on_delete=models.CASCADE, related_name='alkis_energy',
        verbose_name=_('Project id'), blank=True, null=True
    )
    geometry = gis_models.MultiPolygonField(srid=25832, null=True, blank=True, verbose_name=_('Geometry'))
    demand = models.BigIntegerField()
    created_time = models.DateTimeField(auto_now_add=True)
    modified_time = models.DateTimeField(auto_now=True)


class CityModel(models.Model):
    gml_id = models.CharField(max_length=256, verbose_name=_('GML id'), unique=True, blank=True, null=True)
    project = models.ForeignKey(
        Project, on_delete=models.CASCADE, related_name='citymodel_energy',
        verbose_name=_('Project id'), blank=True, null=True
    )
    demand = models.BigIntegerField(blank=True, null=True)
    volume = models.DecimalField(max_digits=12, decimal_places=3, blank=True, null=True)
    infiltration_rate = models.DecimalField(max_digits=12, decimal_places=3, blank=True, null=True)
    average_storey_height = models.DecimalField(max_digits=12, decimal_places=3, blank=True, null=True)
    heated_volume = models.DecimalField(max_digits=12, decimal_places=3, blank=True, null=True)
    heated_area = models.DecimalField(max_digits=12, decimal_places=3, blank=True, null=True)
    surface_to_volume_ratio = models.DecimalField(max_digits=12, decimal_places=6, blank=True, null=True)
    total_surface_area = models.DecimalField(max_digits=12, decimal_places=3, blank=True, null=True)
    usage_hours_per_day = models.IntegerField(blank=True, null=True)
    usage_days_per_year = models.IntegerField(blank=True, null=True)
    healthy_air_change_rate = models.DecimalField(max_digits=12, decimal_places=6, blank=True, null=True)
    occupant_number = models.DecimalField(max_digits=12, decimal_places=3, blank=True, null=True)
    dhw_demand = models.DecimalField(max_digits=12, decimal_places=3, blank=True, null=True)
    average_intern_gains = models.DecimalField(max_digits=12, decimal_places=3, blank=True, null=True)
    heating_setback_temperature = models.DecimalField(max_digits=12, decimal_places=3, blank=True, null=True)
    heating_set_point_temperature = models.DecimalField(max_digits=12, decimal_places=3, blank=True, null=True)

    created_time = models.DateTimeField(auto_now_add=True)
    modified_time = models.DateTimeField(auto_now=True)
