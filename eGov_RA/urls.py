"""eGov_RA URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

from parsingbpmn.views import bpmn_process_management, system_management, \
    delete_process, delete_system, process_enrichment, threat_modeling, process_view_task_type, process_view_attribute, \
    task_type_enrichment, export_threat_modeling, threats_and_controls, bpmn_viewer, edit_process

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', system_management, name='system_management'),
    path('bpmn_process_management/<int:pk>', bpmn_process_management, name='bpmn_process_management'),
    path('process_view_task_type/<int:pk>', process_view_task_type, name='process_view_task_type'),
    path('process_view_attribute/<int:pk>', process_view_attribute, name='process_view_attribute'),
    path('edit_process/<int:pk>', edit_process, name='edit_process'),
    path('delete_process/<int:pk>', delete_process, name='delete_process'),
    path('delete_system/<int:pk>', delete_system, name='delete_system'),
    path('process_enrichment/<int:pk>', process_enrichment, name='process_enrichment'),
    path('bpmn_viewer/<int:pk>', bpmn_viewer, name='bpmn_viewer'),
    path('task_type_enrichment/<int:pk>', task_type_enrichment, name='task_type_enrichment'),
    path('threats_and_controls/<int:pk>', threats_and_controls, name='threats_and_controls'),
    path('threat_modeling/<int:pk>', threat_modeling, name='threat_modeling'),
    path('export_threat_modeling/<int:pk>', export_threat_modeling, name='export_threat_modeling'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)