from rest_framework import viewsets,generics
from livros.api import serializers
from livros import models
from rest_framework.authentication import BasicAuthentication
from rest_framework.permissions  import IsAuthenticated


class LivrosViewset(viewsets.ModelViewSet):
    serializer_class = serializers.LivrosSerializer
    queryset = models.Livros.objects.all()
    


  