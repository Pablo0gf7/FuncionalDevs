from rest_framework import routers
from .api import *
from django.urls import path

users = routers.DefaultRouter()
users.register('alumnos', AlumnoViewSet, 'alumnos')
profesor = routers.DefaultRouter()
profesor.register('profesores', ProfesorViewSet, 'profesor')
tareasmat = routers.DefaultRouter()
tareasmat.register('tareasmat', TareasMatViewSet, 'tareasmat')
tareasfot = routers.DefaultRouter()
tareasfot.register('tareasfot', TareasFotViewSet, 'tareasfot')
tareasmenu = routers.DefaultRouter()
tareasmenu.register('tareasmenu', TareasFotViewSet, 'tareasmenu')
tareas = routers.DefaultRouter()
tareasmenu.register('tareas', TareasViewSet, 'tareas')
item = routers.DefaultRouter()
item.register('item', ItemViewSet, 'item')

urlpatterns = [
  
]

urlpatterns += users.urls
urlpatterns += profesor.urls
urlpatterns += tareasmat.urls
urlpatterns += tareasfot.urls
urlpatterns += tareasmenu.urls
urlpatterns += tareas.urls
urlpatterns += item.urls