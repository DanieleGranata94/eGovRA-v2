from django.db import models
from django.core.validators import FileExtensionValidator

# Create your models here.

class System(models.Model):
    name = models.CharField(max_length=100)

    class Meta:
        verbose_name="System"
        verbose_name_plural="Systems"

    def __str__(self):
        return self.name

    def delete(self, *args, **kwargs):
        processes = Process.objects.filter(system=self)
        for process in processes:
            process.xml.delete()
        super().delete(*args, **kwargs)

class Process(models.Model):
    name = models.CharField(max_length=100)
    xml = models.FileField(upload_to='processes/xml/',
                           validators=[FileExtensionValidator(allowed_extensions=['xml','bpmn'])])
    system = models.ForeignKey(System, on_delete=models.CASCADE)

    class Meta:
        verbose_name="Process"
        verbose_name_plural="Processes"

    def __str__(self):
        return self.name

    def delete(self, *args, **kwargs):
        self.xml.delete()
        super().delete(*args, **kwargs)

class Asset_type(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=500)

    class Meta:
        verbose_name="Asset_type"
        verbose_name_plural="Assets_types"

    def __str__(self):
        return self.name

class Asset(models.Model):
    name = models.CharField(max_length=100)
    process = models.ForeignKey(Process, on_delete=models.CASCADE)
    asset_type = models.ForeignKey(Asset_type,on_delete=models.CASCADE,null=True)

    class Meta:
        verbose_name="Asset"
        verbose_name_plural="Assets"

    def __str__(self):
        return self.name

class Attribute_value(models.Model):
    value = models.CharField(max_length=100)

    class Meta:
        verbose_name="Attribute_value"
        verbose_name_plural="Attributes_values"

    def __str__(self):
        return self.value

class Threat(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=500)

    class Meta:
        verbose_name="Threat"
        verbose_name_plural="Threats"

    def __str__(self):
        return self.name

class Attribute(models.Model):
    attribute_name = models.CharField(max_length=100)
    asset_type = models.ForeignKey(Asset_type,on_delete=models.CASCADE)
    attribute_value = models.ForeignKey(Attribute_value,on_delete=models.CASCADE)

    class Meta:
        verbose_name="Attribute"
        verbose_name_plural="Attributes"

    def __str__(self):
        return self.attribute_name

class Control(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=500)

    class Meta:
        verbose_name="Control"
        verbose_name_plural="Controls"

    def __str__(self):
        return self.name

class Asset_has_attribute(models.Model):
    asset = models.ForeignKey(Asset,on_delete=models.CASCADE)
    attribute = models.ForeignKey(Attribute,on_delete=models.CASCADE)

class Threat_has_attribute(models.Model):
    threat = models.ForeignKey(Threat,on_delete=models.CASCADE)
    attribute = models.ForeignKey(Attribute,on_delete=models.CASCADE)

class Threat_has_control(models.Model):
    threat = models.ForeignKey(Threat, on_delete=models.CASCADE)
    control = models.ForeignKey(Control, on_delete=models.CASCADE)

# AL MODELLO DEI DATI MANCA SOLO LA PARTE RELATIVA AI THREAT AGENTS