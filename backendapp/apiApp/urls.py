from rest_framework import routers
from .api import apiViewSet

users = routers.DefaultRouter()
users.register('api/usuarios', apiViewSet, 'usuarios')
urlpatterns = users.urls

tareas = routers.DefaultRouter()
tareas.register('api/tareas', apiViewSet, 'tareas')
urlpatterns = tareas.urls