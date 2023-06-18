"""
models of project database
"""
from django.db import models
from django.utils.translation import ugettext_lazy as _


class Municipality(models.Model):
    """
    municipality model
    """
    id = models.CharField(primary_key=True, max_length=32, verbose_name=_("id"))
    name = models.CharField(max_length=64, verbose_name=_("nam"))

    class Meta:
        """
        add extra info for project class
        """
        verbose_name = _("Municipality")
        verbose_name_plural = _("Municipalities")

    def __str__(self):
        return self.name


class Project(models.Model):
    """
    project model
    """
    id = models.CharField(primary_key=True, max_length=32, verbose_name=_("Project id"))
    municipality = models.ForeignKey(
        Municipality, on_delete=models.CASCADE, related_name='projects', verbose_name=_("Municipality"), blank=True,
        null=True
    )
    created_time = models.DateTimeField(auto_now_add=True)
    modified_time = models.DateTimeField(auto_now=True)

    class Meta:
        """
        add extra info for project class
        """
        verbose_name = _("Project")
        verbose_name_plural = _("Projects")

    def __str__(self):
        return self.id


class Branch(models.Model):
    """
    steg branch class
    """

    name = models.CharField(max_length=16, verbose_name=_("name"))

    class Meta:
        """
        add extra info for project class
        """
        verbose_name = _("Steg branch name")
        verbose_name_plural = _("Steg branches name")

    def __str__(self):
        return self.name


class SharedProject(models.Model):
    branch = models.ForeignKey(
        Branch, on_delete=models.CASCADE, related_name='shared_projects', verbose_name=_("Branch id")
    )
    project = models.ForeignKey(
        Project, on_delete=models.CASCADE, related_name='shared_projects', verbose_name=_('Project id')
    )

    class Meta:
        """
        add extra info for shared project class
        """
        verbose_name = _("Shared project list")
        verbose_name_plural = _("Shared projects list")

    def __str__(self):
        return f'{self.branch}, {self.project}'
