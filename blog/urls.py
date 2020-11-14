from django.urls import include, path
from django.conf.urls import url
from rest_framework.routers import DefaultRouter
from .api import PostViewSets, UserViewSets, CategoryViewSets

from . import views


router = DefaultRouter()
router.register(r'post', PostViewSets, basename = 'post' )
router.register(r'user', UserViewSets, basename = 'user' )
router.register(r'category', CategoryViewSets, basename = 'category' )

urlpatterns = [
    url(r'^$', views.index), 
    url(r'^post/(?P<id>[0-9]+)/$', views.showOneArticle),
    url(r'^category/', views.showAllCategory),
    url(r'^blog/category/(?P<id>[0-9]+)/$', views.showAllPostCategory),
    path("api/", include(router.urls)),
]
