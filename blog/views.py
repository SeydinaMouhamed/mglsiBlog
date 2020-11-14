# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.shortcuts import render, redirect, get_object_or_404
from post.models import Post
from category.models import Category


def index(request):
    categories = Category.objects.all()
    post = Post.objects.all()
    return render(request, 'blog/index.html', {'posts': post, 'categories' : categories})

def showOneArticle(request, id):
    posts = Post.objects.all()
    post = get_object_or_404(Post, id=id)
    return render(request, 'blog/pages/article.html', {'post': post, 'posts' : posts})


def showAllCategory(request):
    categories = Category.objects.all()
    return render(request, 'blog/pages/category.html', {'categories' : categories})


def showAllPostCategory(request, id):
    categories = Category.objects.all()
    category = get_object_or_404(Category, id=id)
    posts = Post.objects.filter(post_category = id)
    return render(request, 'blog/index.html', {'posts': posts, 'categories' : categories})
    

