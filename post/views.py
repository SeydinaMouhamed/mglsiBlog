from django.shortcuts import render
from post.models import Post


def index(request):
    Post = Post.objects.all()
    return render(request, 'post/index.html', {'posts': post})


# def detail_cell(request, id):
#     cell = get_object_or_404(Cell, id=id)
#     return render(request, 'cell/pages/detail_cell.html', {'cell':cell})
