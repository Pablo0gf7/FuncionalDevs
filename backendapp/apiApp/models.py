# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models

class Usuario(models.Model):
    idus = models.BigAutoField(primary_key=True)
    nombre = models.TextField(blank=True, null=True)  # This field type is a guess.
    apellidos = models.TextField(blank=True, null=True)  # This field type is a guess.
    nombre_usuario = models.TextField(blank=True, null=True)  # This field type is a guess.
    password = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
        db_table = 'usuario'


class Profesor(Usuario):
    es_admin = models.BooleanField()

    class Meta:
        db_table = 'profesor'


class Alumno(Usuario):
    aula = models.TextField(blank=True, null=True);
    class Meta:
        db_table = 'alumno'


class Tarea(models.Model):
    idta = models.BigAutoField(primary_key=True)
    nombre = models.TextField(blank=True, null=True)  # This field type is a guess.
    descripcion = models.TextField(blank=True, null=True)  # This field type is a guess.
    fecha_inicio = models.DateField(blank=True, null=True)
    fecha_fin = models.DateField(blank=True, null=True)
    estado = models.BooleanField()  # This field type is a guess.
    corregido = models.BooleanField( null=True)
    usuario = models.ForeignKey(Usuario, on_delete=models.CASCADE)
    
    class Meta:
        db_table = 'tarea'


class TareaComanda(Tarea):
    class Meta:
        db_table = 'tarea_comanda'


class TareaFotocopia(Tarea):
    
    aula = models.TextField(blank=True, null=True)  # This field type is a guess.
    cantidad = models.BigIntegerField(blank=True, null=True)  # This field type is a guess.
    class Meta:
        db_table = 'tarea_fotocopia'


class TareaMaterial(Tarea):
    aula = models.TextField(blank=True, null=True)  # This field type is a guess.
    cantidad_requerida = models.BigIntegerField(blank=True, null=True)  # This field type is a guess.
    cantidad_conseguida = models.BigIntegerField(blank=True, null=True)  # This field type is a guess.

    class Meta:
    
        db_table = 'tarea_material'


class TareaMenu(Tarea):
    aula = models.TextField(blank=True, null=True)  # This field type is a guess.
    cantidad = models.BigIntegerField(blank=True, null=True)  # This field type is a guess.

    class Meta:
     
        db_table = 'tarea_menu'
class Item(models.Model):
    id_item = models.BigAutoField(primary_key=True)
    nombre = models.TextField(blank=True, null=True)  # This field type is a guess.
    descripcion = models.TextField(blank=True, null=True)  # This field type is a guess.
    
    stock = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
        db_table = 'item'

class Pictograma(models.Model):
    id_picto = models.BigAutoField(primary_key=True)
    imagen = models.TextField()
    secuencia = models.IntegerField(null=True)
    tarea = models.ForeignKey(Tarea, on_delete=models.CASCADE)
    
    class Meta:
        db_table = 'pictograma'