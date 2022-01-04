from django.db import models

# Create your models here.
class Livros(models.Model):
    title = models.CharField(max_length=200)   
    author = models.CharField(max_length=200)
    publishing_company =models.CharField(max_length=200)
    pages = models.IntegerField(blank=True)
    resume = models.TextField(max_length=500,default="")
    images = models.ImageField('image/',default="")