from django.contrib import admin
from .models import Livros
# Register your models here.
@admin.register(Livros)
class LivrosAdmin(admin.ModelAdmin):
    list_display = ['id','title','author','publishing_company','pages','resume','images',]