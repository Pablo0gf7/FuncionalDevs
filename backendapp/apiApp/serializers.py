from rest_framework import serializers
from .models import *

#Se encarga de serializar los profesores
class profesorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Profesor
        fields = (
            'idus',
            'nombre',
            'apellidos',
            'nombre_usuario',
            'password',
            'es_admin'
        )

class usuarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Usuario
        fields = (
            'idus',
            'nombre',
            'apellidos',
            'nombre_usuario',
            'password'
            
        )
class alumnoSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Alumno
        fields = (
            'idus',
            'nombre',
            'apellidos',
            'nombre_usuario',
            'password',
            'aula'
        )
    
#Se encarga de serializar una tarea de material
class TareaMatSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = TareaMaterial
        fields = (
            'idta',
            'nombre',
            'descripcion',
            'fecha_inicio',
            'fecha_fin',
            'estado',
            'aula',
            'cantidad_requerida',
            'cantidad_conseguida'
        )

#Se encarga de serializar una tarea de fotocopias
class TareaFotSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = TareaMaterial
        fields = (
            'idta',
            'nombre',
            'descripcion',
            'fecha_inicio',
            'fecha_fin',
            'estado',
            'aula',
            'cantidad'
        )

#Se encarga de serializar una tarea de menus
class TareaMenuSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = TareaMenu
        fields = (
            'idta',
            'nombre',
            'descripcion',
            'fecha_inicio',
            'fecha_fin',
            'estado',
            'aula',
            'cantidad'
        )
class TareaSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Tarea
        fields = (
            'idta',
            'nombre',
            'descripcion',
            'fecha_inicio',
            'fecha_fin',
            'estado',
            'corregido',
            'usuario'
        )

class ItemSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Item
        fields = (
            'id_item',
            'nombre',
            'descripcion',
            'stock'
        )

class PictogramaSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Pictograma
        fields = (
            'id_picto',
            'imagen',
            'secuencia',
            'tarea'
        )