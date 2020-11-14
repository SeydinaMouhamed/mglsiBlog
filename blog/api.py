from rest_framework import viewsets
from .serializers import PostSerializer, UserSerializer, CategorySerializer
from post.models import Post
from category.models import Category
from django.contrib.auth.models import User

class PostViewSets(viewsets.ModelViewSet):
    serializer_class = PostSerializer
    queryset = Post.objects.all()


class UserViewSets(viewsets.ModelViewSet):
    serializer_class = UserSerializer
    queryset = User.objects.all()

class CategoryViewSets(viewsets.ModelViewSet):
    serializer_class = CategorySerializer
    queryset = Category.objects.all()
