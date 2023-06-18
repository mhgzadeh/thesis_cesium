"""
models of alkis database
"""
from django.contrib.gis.db import models
from django.utils.translation import ugettext_lazy as _

from project.models import Project


class LandParcel(models.Model):
    """
    land parcel model
    """
    project = models.ForeignKey(
        Project, on_delete=models.CASCADE, related_name='land_parcels',
        verbose_name=_('project id'), blank=True, null=True
    )
    gml_id = models.CharField(max_length=256, verbose_name=_('GML id'), unique=True, blank=True, null=True)
    geometry = models.PolygonField(srid=25832, null=True, blank=True, verbose_name=_('Geometry'))
    type = models.CharField(max_length=256, blank=True, null=True, verbose_name=_('Type'))
    number = models.CharField(max_length=256, blank=True, null=True, verbose_name=_('Land parcel number'))
    address = models.CharField(max_length=256, blank=True, null=True, verbose_name=_('Address'))
    usage = models.CharField(max_length=256, blank=True, null=True, verbose_name=_('Usage'))
    area = models.DecimalField(max_digits=12, decimal_places=2, blank=True, null=True, verbose_name=_('Area'))
    image_1 = models.CharField(max_length=256, blank=True, null=True, verbose_name='Image 1')
    image_2 = models.CharField(max_length=256, blank=True, null=True, verbose_name='Image 2')
    image_3 = models.CharField(max_length=256, blank=True, null=True, verbose_name='Image 3')
    image_4 = models.CharField(max_length=256, blank=True, null=True, verbose_name='Image 4')
    image_5 = models.CharField(max_length=256, blank=True, null=True, verbose_name='Image 5')
    comment = models.TextField(blank=True, null=True)
    created_time = models.DateTimeField(auto_now_add=True)
    modified_time = models.DateTimeField(auto_now=True)

    class Meta:
        """
        add extra info for project class
        """
        verbose_name = _("Land parcel")
        verbose_name_plural = _("Land parcels")

    def __str__(self):
        return self.address


class Building(models.Model):
    """
    building model
    """
    gml_id = models.CharField(max_length=256, verbose_name=_('GML id'), unique=True)
    project = models.ForeignKey(
        Project, on_delete=models.CASCADE, related_name='alkis_buildings',
        verbose_name=_('Project id'), blank=True, null=True
    )
    land_parcel_fk = models.ForeignKey(
        LandParcel, on_delete=models.CASCADE, related_name='alkis_land_parcels_fk',
        verbose_name=_('Land parcel foreign key'), blank=True, null=True
    )
    project_code = models.CharField(max_length=256, blank=True, null=True, verbose_name=_('Project id'))
    geometry = models.MultiPolygonField(srid=25832, null=True, blank=True, verbose_name=_('Geometry'))
    type = models.CharField(max_length=256, blank=True, null=True, verbose_name=_('Type'))
    function = models.CharField(max_length=256, blank=True, null=True, verbose_name=_('Function'))
    year = models.CharField(max_length=256, blank=True, null=True, verbose_name=_('Year'))
    number = models.CharField(max_length=32, blank=True, null=True, verbose_name=_('House number'))
    address = models.CharField(max_length=256, blank=True, null=True, verbose_name=_('Address'))
    usage = models.CharField(max_length=256, blank=True, null=True, verbose_name=_('Usage'))
    status = models.CharField(max_length=256, blank=True, null=True, verbose_name=_('Status'))
    energy = models.CharField(max_length=256, blank=True, null=True, verbose_name=_('Energy'))
    area = models.DecimalField(max_digits=12, decimal_places=2, blank=True, null=True, verbose_name=_('Area'))
    image_1 = models.CharField(max_length=256, blank=True, null=True, verbose_name='Image 1')
    image_2 = models.CharField(max_length=256, blank=True, null=True, verbose_name='Image 2')
    image_3 = models.CharField(max_length=256, blank=True, null=True, verbose_name='Image 3')
    image_4 = models.CharField(max_length=256, blank=True, null=True, verbose_name='Image 4')
    image_5 = models.CharField(max_length=256, blank=True, null=True, verbose_name='Image 5')
    text = models.TextField(blank=True, null=True)
    created_time = models.DateTimeField(auto_now_add=True)
    modified_time = models.DateTimeField(auto_now=True)

    class Meta:
        """
        add extra info for building class
        """
        verbose_name = _("Building")
        verbose_name_plural = _("Buildings")

    def __str__(self):
        return self.address
