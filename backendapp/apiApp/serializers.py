from rest_framework import serializers
from .models import *

    
class UsuarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Usuario
        fields = (
            'idus',
            'nombre',
            'apellidos',
            'nombre_usuario',
            'password',
            'es_admin'
        )
    

class TareaSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Tarea
        fields = (
            
            'nombre',
            'descripcion',
            'fecha_inicio',
            'fecha_fin',
            'estado'
        )

class ProfesorSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Profesor
        fields = (
            
            'nombre',
            'apellidos',
            'nombre_usuario',
            'password'
        )