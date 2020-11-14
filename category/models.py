from django.db import models
from django.contrib.auth.models import User

class Category(models.Model):

    category_title = models.CharField(max_length=50)
    
    def __str__(self):
        return self.category_title
   