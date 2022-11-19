from rest_framework import routers
from .api import *

users = routers.DefaultRouter()
users.register('api/usuarios', UsuarioViewSet, 'usuarios')
tareas = routers.DefaultRouter()
tareas.register('api/tareas', TareasViewSet, 'tareas')

urlpatterns = [
   
]

urlpatterns += users.urls
urlpatterns += tareas.urls