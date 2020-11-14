from django.db import models

class Post(models.Model):
    post_title = models.CharField(max_length=50)
    post_body = models.TextField()
    post_category = models.ForeignKey("category.Category", on_delete=models.SET_NULL, blank=True, null=True)
    
    def __str__(self):
        return self.post_title
   