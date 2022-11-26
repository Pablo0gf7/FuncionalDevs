from http.client import HTTPResponse
from .models import *
from rest_framework import viewsets, permissions
from .serializers import *;
from django.http import response

class UsuarioViewSet(viewsets.ModelViewSet):
    queryset = Usuario.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  UsuarioSerializer


class TareasViewSet(viewsets.ModelViewSet):
    queryset = Tarea.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  TareaSerializer
    
class ProfesorViewSet(viewsets.ModelViewSet):
    queryset = Profesor.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  ProfesorSerializer