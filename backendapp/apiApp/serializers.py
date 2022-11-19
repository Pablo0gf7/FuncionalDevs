from rest_framework import serializers
from .models import *

class ApiSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Usuario
        fields = ('nombre','apellidos','nombre_usuario','password')
        model =Tarea
        fields = ('nombre','descripcion')