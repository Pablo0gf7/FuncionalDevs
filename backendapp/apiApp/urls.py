from rest_framework import routers
from .api import *
from django.urls import path

users = routers.DefaultRouter()
users.register('usuarios', UsuarioViewSet, 'usuarios')
tareas = routers.DefaultRouter()
tareas.register('tareas', TareasViewSet, 'tareas')
profesor = routers.DefaultRouter()
profesor.register('profesores', ProfesorViewSet, 'profesor')


urlpatterns = [
  
]

urlpatterns += users.urls
urlpatterns += tareas.urls
urlpatterns += profesor.urls