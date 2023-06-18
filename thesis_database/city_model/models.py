"""
models of alkis database
"""
from django.contrib.gis.db import models as gis_models
from django.db import models
from django.utils.translation import ugettext_lazy as _

from project.models import Project


class Building(models.Model):
    """
    3D city building model
    """
    gml_id = models.CharField(max_length=256, verbose_name=_('GML id'))
    project = models.ForeignKey(
        Project, on_delete=models.CASCADE, related_name='city_models_buildings',
        verbose_name=_('Project id'), blank=True, null=True
    )
    geometry = gis_models.PolygonField(srid=25832, dim=3, null=True, blank=True, verbose_name=_('Geometry'))
    created_time = models.DateTimeField(auto_now_add=True, null=True, blank=True)
    modified_time = models.DateTimeField(auto_now=True, null=True, blank=True)

    class Meta:
        """
        add extra info for building class
        """
        verbose_name = _("Building")
        verbose_name_plural = _("Buildings")

    def __str__(self):
        return self.gml_id


class RoofSurface(gis_models.Model):
    """
    3D city roof surface building model
    """
    gml_id = models.CharField(max_length=256, verbose_name=_('GML id'), unique=True, blank=True, null=True)
    building_fk = models.ForeignKey(
        Building, on_delete=models.CASCADE, related_name='roofsurface_building', verbose_name=_('Project id'),
        blank=True, null=True
    )
    count = gis_models.IntegerField(verbose_name=_('Count'))
    geometry = gis_models.PolygonField(srid=25832, null=True, blank=True, verbose_name=_('Geometry'))
    building_id = models.CharField(max_length=256, verbose_name=_('Building id'), default=None)

    class Meta:
        """
        add extra info for 3D city roof surface building model
        """
        verbose_name = _("Roof Surface")
        verbose_name_plural = _("Roof Surfaces")

    def __str__(self):
        return self.gml_id


class GroundSurface(gis_models.Model):
    """
    3D city ground surface building model
    """
    gml_id = models.CharField(max_length=256, verbose_name=_('GML id'), unique=True, blank=True, null=True)
    building_fk = models.ForeignKey(
        Building, on_delete=models.CASCADE, related_name='groundsurface_building', verbose_name=_('Project id'),
        blank=True, null=True
    )
    geometry = gis_models.PolygonField(srid=25832, null=True, blank=True, verbose_name=_('Geometry'))
    count = gis_models.IntegerField(verbose_name=_('Count'))
    building_id = models.CharField(max_length=256, verbose_name=_('Building id'), default=None)

    class Meta:
        """
        add extra info for 3D city roof surface building model
        """
        verbose_name = _("Ground Surface")
        verbose_name_plural = _("Ground Surfaces")

    def __str__(self):
        return self.gml_id


class WallSurface(gis_models.Model):
    """
    3D city wall surface building model
    """
    gml_id = models.CharField(max_length=256, verbose_name=_('GML id'), unique=True, blank=True, null=True)
    building_fk = models.ForeignKey(
        Building, on_delete=models.CASCADE, related_name='wallsurface_building', verbose_name=_('Project id'),
        blank=True, null=True
    )
    count = models.IntegerField(verbose_name=_('Count'))
    geometry = gis_models.PolygonField(srid=25832, null=True, blank=True, verbose_name=_('Geometry'))
    building_id = models.CharField(max_length=256, verbose_name=_('Building id'), default=None)

    class Meta:
        """
        add extra info for 3D city wall surface building model
        """
        verbose_name = _("Wall Surface")
        verbose_name_plural = _("Wall Surfaces")

    def __str__(self):
        return self.gml_id
