# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models



class Administrador(models.Model):
    adid = models.TextField()  # This field type is a guess.

    class Meta:
        db_table = 'administrador'


class Alumno(models.Model):
    alid = models.IntegerField()

    class Meta:
        db_table = 'alumno'


class AlumnoMensaje(models.Model):
    alumno_id = models.IntegerField()
    mensaje_id_mensaje = models.IntegerField()

    class Meta:
        db_table = 'alumno_mensaje'


class Audio(models.Model):
    id_audio = models.IntegerField()
    id_explicacion_a = models.IntegerField()

    class Meta:
        db_table = 'audio'


class Explicacion(models.Model):
    id_explicacion = models.IntegerField()
    descripcion = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
        db_table = 'explicacion'


class Imagen(models.Model):
    id_imagen = models.IntegerField()
    item_id_item = models.IntegerField(unique=True, blank=True, null=True)

    class Meta:
        db_table = 'imagen'


class Item(models.Model):
    id_item = models.IntegerField()
    nombre = models.TextField(blank=True, null=True)  # This field type is a guess.
    descripcion = models.TextField(blank=True, null=True)  # This field type is a guess.
    stock = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
        db_table = 'item'


class Mensaje(models.Model):
    id_mensaje = models.IntegerField()
    titulo = models.TextField(blank=True, null=True)  # This field type is a guess.
    texto = models.TextField(blank=True, null=True)  # This field type is a guess.
    fecha = models.DateField(blank=True, null=True)
    hora = models.TimeField(blank=True, null=True)

    class Meta:
        db_table = 'mensaje'


class Menu(models.Model):
    id_menu = models.IntegerField()
    tipo = models.TextField(blank=True, null=True)  # This field type is a guess.
    fecha_inicio = models.DateField(blank=True, null=True)
    fecha_fin = models.DateField(blank=True, null=True)
    tarea_menu_id_tarea = models.TextField()  # This field type is a guess.

    class Meta:
        db_table = 'menu'


class Notificacion(models.Model):
    id_notificacion = models.IntegerField()
    titulo = models.TextField(blank=True, null=True)  # This field type is a guess.
    texto = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
        db_table = 'notificacion'


class Pictograma(models.Model):
    id_picto = models.IntegerField()
    secuencia_pictogramas_id_sec = models.IntegerField()

    class Meta:
        db_table = 'pictograma'


class Plato(models.Model):
    id_plato = models.IntegerField()
    tipo_plato = models.TextField(blank=True, null=True)  # This field type is a guess.
    descripcion = models.TextField(blank=True, null=True)  # This field type is a guess.
    imagen_id_imagen = models.TextField(unique=True)  # This field type is a guess.
    menu_id_menu = models.TextField()  # This field type is a guess.

    class Meta:
        db_table = 'plato'


class ProfeMen(models.Model):
    profesor_id = models.IntegerField()
    mensaje_id_mensaje = models.IntegerField()

    class Meta:
        db_table = 'profe_men'


class Profesor(models.Model):
    proid = models.TextField()  # This field type is a guess.

    class Meta:
        db_table = 'profesor'


class Relation10(models.Model):
    imagen_id_imagen = models.IntegerField()
    explicacion_id_explicacion = models.IntegerField()

    class Meta:
        db_table = 'relation_10'


class Retroalimentacion(models.Model):
    id_retroalimentacion = models.IntegerField()
    descripcion = models.TextField(blank=True, null=True)  # This field type is a guess.
    tarea_id_tarea = models.TextField(unique=True)  # This field type is a guess.

    class Meta:
        db_table = 'retroalimentacion'


class SecuenciaPictogramas(models.Model):
    id_sec = models.IntegerField()
    orden = models.TextField(blank=True, null=True)  # This field type is a guess.
    explicacion_id_explicacion = models.IntegerField()

    class Meta:
        db_table = 'secuencia_pictogramas'


class Tarea(models.Model):
    id_tarea = models.IntegerField()
    nombre = models.TextField(blank=True, null=True)  # This field type is a guess.
    descripcion = models.TextField(blank=True, null=True)  # This field type is a guess.
    fecha_inicio = models.DateField(blank=True, null=True)
    fecha_fin = models.DateField(blank=True, null=True)
    estado = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
        db_table = 'tarea'


class TareaComanda(models.Model):
    id_tarea = models.TextField()  # This field type is a guess.

    class Meta:
        db_table = 'tarea_comanda'


class TareaFotocopia(models.Model):
    id_tarea = models.IntegerField()
    aula = models.TextField(blank=True, null=True)  # This field type is a guess.
    cantidad = models.TextField(blank=True, null=True)  # This field type is a guess.
    descripcion = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
        db_table = 'tarea_fotocopia'


class TareaMaterial(models.Model):
    id_tarea = models.IntegerField()
    aula = models.TextField(blank=True, null=True)  # This field type is a guess.
    cantidad_requerida = models.TextField(blank=True, null=True)  # This field type is a guess.
    cantidad_conseguida = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
    
        db_table = 'tarea_material'


class TareaMenu(models.Model):
    id_tarea = models.TextField()  # This field type is a guess.
    aula = models.TextField(blank=True, null=True)  # This field type is a guess.
    cantidad = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
     
        db_table = 'tarea_menu'


class TareamatItem(models.Model):
    item_id_item = models.IntegerField()
    tarea_material_id_tarea = models.IntegerField()

    class Meta:
    
        db_table = 'tareamat_item'


class Texto(models.Model):
    id_texto = models.IntegerField()
    explicacion_id_explicacion = models.IntegerField()

    class Meta:
        db_table = 'texto'


class Usuario(models.Model):
    nombre = models.TextField(blank=True, null=True)  # This field type is a guess.
    apellidos = models.TextField(blank=True, null=True)  # This field type is a guess.
    nombre_usuario = models.TextField(blank=True, null=True)  # This field type is a guess.
    password = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
        db_table = 'usuario'

class UsuarioNotifi(models.Model):
    usuario_id = models.IntegerField()
    notificacion_id_notificacion = models.IntegerField()

    class Meta:
        db_table = 'usuario_notifi'


class UsuarioTarea(models.Model):
    usuario_id = models.IntegerField()
    tarea_id_tarea = models.IntegerField()

    class Meta:
        db_table = 'usuario_tarea'


class Video(models.Model):
    explicacion_id_explicacion = models.IntegerField()

    class Meta:
        db_table = 'video'
