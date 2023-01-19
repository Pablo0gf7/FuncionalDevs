from .models import *
from .serializers import *
from django.http import Http404
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework import filters
from rest_framework.renderers import JSONRenderer
from django.core import serializers

class TaCompletadas(APIView):
    
    def get(self, request, format=None):
        tareas = Tarea.objects.filter(estado='True', corregido='False')
        serializador = TareaSerializer(tareas, many=True)
        return Response(serializador.data)

class HistorialTa(APIView):
    
    def get(self, request, format=None):
        tareas = Tarea.objects.filter(estado='True', corregido='True')
        serializador = TareaSerializer(tareas, many=True)
        return Response(serializador.data)


class UsuarioNom(APIView):
    
    def get(self, request, format=None):
        usuario = serializers.serialize('json', Usuario.objects.filter(nombre_usuario="rvnn"))
        

        return Response(usuario)
    