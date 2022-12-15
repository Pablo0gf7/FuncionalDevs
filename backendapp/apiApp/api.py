from http.client import HTTPResponse
from .models import *
from rest_framework import viewsets, permissions
from .serializers import *;
from django.http import response

#Crea la vista de Profesores y los respectivos metodos

class AlumnoViewSet(viewsets.ModelViewSet):
    queryset = Alumno.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  alumnoSerializer

#Crea la vista con las tareas de material
class TareasMatViewSet(viewsets.ModelViewSet):
    queryset = TareaMaterial.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  TareaMatSerializer
    
#Crea la vista con los profesores
class ProfesorViewSet(viewsets.ModelViewSet):
    queryset = Profesor.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  profesorSerializer

#Crea la vista con las tareas de fotocopia
class TareasFotViewSet(viewsets.ModelViewSet):
    queryset = TareaFotocopia.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  TareaFotSerializer

#Crea la vista con las tareas de fotocopia
class TareasFotViewSet(viewsets.ModelViewSet):
    queryset = TareaMenu.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  TareaMenuSerializer

class TareasViewSet(viewsets.ModelViewSet):
    queryset = Tarea.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  TareaSerializer

class ItemViewSet(viewsets.ModelViewSet):
    queryset = Item.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  ItemSerializer
class PictogramaViewSet(viewsets.ModelViewSet):
    queryset = Pictograma.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  PictogramaSerializer

