from  livros import models
from rest_framework import fields, serializers



class LivrosSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Livros
        fields = '__all__'

