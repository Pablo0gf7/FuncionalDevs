from .models import *
from rest_framework import viewsets, permissions
from .serializers import *;

class UsuarioViewSet(viewsets.ModelViewSet):
    queryset = Usuario.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  UsuarioSerializer

class TareasViewSet(viewsets.ModelViewSet):
    queryset = Tarea.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  TareaSerializer