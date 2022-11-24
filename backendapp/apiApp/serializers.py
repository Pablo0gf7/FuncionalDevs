from rest_framework import serializers
from .models import *

class UsuarioSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Usuario
        fields = (
            'nombre',
            'apellidos',
            'nombre_usuario',
            'password'
        )

class TareaSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Tarea
        fields = ('nombre','descripcion','fecha_inicio','fecha_fin','estado')
