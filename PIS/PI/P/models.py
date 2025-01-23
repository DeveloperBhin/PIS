from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User

# Create your models here.
class registerpage(models.Model):
    user=models.ForeignKey(User,on_delete=models.CASCADE)
    username = models.CharField(max_length=254)
    password = models.CharField(max_length=16)

def __str__(self):
  return self.username

class imagepage(models.Model):
  image=models.ImageField(upload_to='uploads/',default=0)
  description=models.TextField()
  
  def __str__(self):
   return self.description
 
class Note(models.Model):
  user=models.ForeignKey(User,on_delete=models.CASCADE)
  tittle=models.CharField(max_length=50)
  description=models.TextField()
  
  def __str__(self):
    return self.tittle
 
class Upload(models.Model):
  user=models.ForeignKey(User,on_delete=models.CASCADE)
  file=models.FileField(upload_to='upload/',default=0)
  description=models.TextField()
  
  def __str__(self):
   return self.description
 
class Videos(models.Model):
  user=models.ForeignKey(User,on_delete=models.CASCADE)
  videos=models.FileField(upload_to='Videos/',default=0)
  description=models.TextField()
  
  def __str__(self):
   return self.description
 
class Image(models.Model):
  user=models.ForeignKey(User,on_delete=models.CASCADE)
  image=models.ImageField(upload_to='Images/',default=0)
  description=models.TextField()
  
  def __str__(self):
   return self.description
 
class Audios(models.Model):
  user=models.ForeignKey(User,on_delete=models.CASCADE)
  Audios=models.FileField(upload_to='Audios/',default=0)
  description=models.TextField()
  
  def __str__(self):
   return self.description
 
class Links(models.Model):
  user=models.ForeignKey(User,on_delete=models.CASCADE)
  Link=models.URLField(max_length=200)
  description=models.TextField()
  
  def __str__(self):
   return self.description
 
class Others(models.Model):
  user=models.ForeignKey(User,on_delete=models.CASCADE)
  image=models.ImageField(upload_to='other/',default=0)
  Link=models.URLField(max_length=200)
  Audios=models.FileField(upload_to='other/',default=0)
  image=models.ImageField(upload_to='other/',default=0)
  videos=models.FileField(upload_to='other/',default=0)
  file=models.ImageField(upload_to='other/',default=0)
  description=models.TextField()
  
  def __str__(self):
   return self.description
 
 