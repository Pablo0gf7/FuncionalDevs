from .models import *
from rest_framework import viewsets, permissions
from .serializers import ApiSerializer;

class apiViewSet(viewsets.ModelViewSet):
    queryset = Usuario.objects.all()
    permission_classes = [permissions.AllowAny]
    serializer_class =  ApiSerializer
