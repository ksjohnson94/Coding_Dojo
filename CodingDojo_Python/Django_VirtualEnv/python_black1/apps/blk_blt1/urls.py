from django.conf.urls import url, include
from django.contrib import admin

urlpatterns = [
    url(r'^', include('apps.blk_blt1.urls', namespace = 'users')),
    
]
