from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from django.contrib import messages
from .forms import *
from .models import *
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required



# Create your views here.

  
def home(request):
    if request.method == "POST":
        reg = RegisterForm(request.POST)
        if reg.is_valid():
            reg.save()
            user = reg.cleaned_data.get('username')
            messages.success(request, f'Registration successful for {user}')
            return redirect('loginpage')
        else:
            return render(request, 'home.html', {'reg': reg})
    else:
        reg = RegisterForm()

    context = {
        'reg': reg,
    }

    return render(request, 'home.html', context)

def loginpage(request):
    if request.method == "POST":
        form = LoginForm(request, data=request.POST)
        if form.is_valid():
            user = form.get_user()
            login(request, user)
            return redirect('index')
        else:
            messages.info(request, 'Invalid username or password')
            return redirect('loginpage')
    else:
        form = LoginForm()

    return render(request, 'login.html', {'form': form})


@login_required
def logout(request):
    return redirect('loginpage')
    return render(request,'login.html')


@login_required
def addCategory(request):
  
   if request.method=='POST':
       img=imageuploadForm(request.POST,request.FILES)
       if img.is_valid():
         img.save()
         return redirect('index')
         messages.info(request, 'Invalid credentials')
       else:
           return redirect('login')
   else:   
       img=imageuploadForm()
  
   return render(request,'addCategory.html', {'img': img})

@login_required
def index(request):

     image1 = get_object_or_404(imagepage, description='Note')
     image2 = get_object_or_404(imagepage, description='File')
     image3 = get_object_or_404(imagepage, description='Images')
     image4 = get_object_or_404(imagepage, description='Videos')
     image5 = get_object_or_404(imagepage, description='Audios')
     image6 = get_object_or_404(imagepage, description='Links')
     image7 = get_object_or_404(imagepage, description='Others')
     image8 = get_object_or_404(imagepage, description='Profile')
     

     return render(request,'index.html',{
        'image1': image1,
        'image2': image2,
        'image3': image3,
        'image4': image4,
        'image5': image5,
        'image6': image6,
        'image7': image7,
        'image8': image8,
        
        })
     
@login_required     
def Notepage(request):
     if request.method == "POST":
        Note1 = NoteForm(request.POST)
        if Note1.is_valid():
           
            instance = Note1.save(commit=False)
            instance.user = request.user  # Assign the logged-in user
            instance.save()
            user = Note1.cleaned_data.get('tittle')
            messages.success(request, f'data saved for {user}')
            return redirect('Notepage')
        else:
            return render(request, 'home.html', {'Note1': Note1})
     else:
        Note1 = NoteForm()

     if request.method=='GET':
      Note2=Note.objects.filter(user=request.user)
      image8 = get_object_or_404(imagepage, description='Profile')
     context = {
        'Note1': Note1,
        'Note2':Note2,
        'image8': image8,
    }
    
     return render(request,'Note.html',context)
 
@login_required
def Audiospage(request):
     if request.method == "POST":
        Aud = AudiosForm(request.POST,request.FILES)
        if Aud.is_valid():
            instance=Aud.save(commit=False)
            instance.user=request.user
            instance.save()
            user = Aud.cleaned_data.get('Audios')
            messages.success(request, f'Audio saved for {user}')
            return redirect('Audiospage')
        else:
            return render(request, 'home.html', {'Aud': Aud})
     else:
        Aud = AudiosForm()

     if request.method=='GET':
      audio=Audios.objects.filter(user=request.user)
      image8 = get_object_or_404(imagepage, description='Profile')
     context = {
        'Aud': Aud,
        'audio':audio,
        'image8': image8,
       
    }
    
     return render(request,'Audio.html',context)
 
@login_required
def Imagespage(request):
     if request.method == "POST":
        img = ImageForm(request.POST,request.FILES)
        if img.is_valid():
            instance=img.save(commit=False)
            instance.user=request.user
            instance.save()
           
            user = img.cleaned_data.get('image')
            messages.success(request, f'Image  saved for {user}')
            return redirect('Imagespage')
        else:
            return render(request, 'home.html', {'imag': imag})
     else:
        img = ImageForm()

     if request.method=='GET':
      image1=Image.objects.filter(user=request.user)
      image8 = get_object_or_404(imagepage, description='Profile')
     context = {
        'img': img,
        'image1':image1,
        'image8': image8,
    }
    
     return render(request,'Images.html',context)

@login_required
def Videospage(request):
     if request.method == "POST":
        vid = VideosForm(request.POST,request.FILES)
        if vid.is_valid():
            instance=vid.save(commit=False)
            instance.user=request.user
            instance.save()
           
            user = vid.cleaned_data.get('videos')
            messages.success(request, f'Videos saved for {user}')
            return redirect('Videospage')
        else:
            return render(request, 'home.html', {'vid': vid})
     else:
        vid = VideosForm()

     if request.method=='GET':
      vid1=Videos.objects.filter(user=request.user)
      image8 = get_object_or_404(imagepage, description='Profile') 
     context = {
        'vid1': vid1,
        'vid':vid,
        'image8': image8,
    }
     return render(request,'Videos.html',context)

@login_required
def Uploadpage(request):
     if request.method == "POST":
        upl = UploadForm(request.POST,request.FILES)
        if upl.is_valid():
            instance=upl.save(commit=False)
            instance.user=request.user
            instance.save()
           
            user = upl.cleaned_data.get('file')
            messages.success(request, f'Upload saved for {user}')
            return redirect('Uploadpage')
        else:
            return render(request, 'home.html', {'upl': upl})
     else:
        upl = UploadForm()

     if request.method=='GET':
      up=Upload.objects.filter(user=request.user)
      image8 = get_object_or_404(imagepage, description='Profile') 
     context = {
        'up': up,
        'upl':upl,
        'image8': image8,
    }
    
     return render(request,'Upload.html',context)

@login_required
def Linkpage(request):
     if request.method == "POST":
        lnk = LinksForm(request.POST)
        if lnk.is_valid():
            instance=lnk.save(commit=False)
            instance.user=request.user
            instance.save()
            
            user = lnk.cleaned_data.get('Link')
            messages.success(request, f'link saved  for {user}')
            return redirect('Linkpage')
        else:
            return render(request, 'home.html', {'lnk': lnk})
     else:
        lnk = LinksForm()

     if request.method=='GET':
      ln=Links.objects.filter(user=request.user)
      image8 = get_object_or_404(imagepage, description='Profile') 
     context = {
        'ln': ln,
        'lnk':lnk,
        'image8': image8,
    }
    
     return render(request,'Links.html',context)

@login_required
def Otherpage(request):
     if request.method == "POST":
        oth = OthersForm(request.POST,request.FILES)
        if oth.is_valid():
            instance=oth.save(commit=False)
            instance.user=request.user
            instance.save()
            user = oth.cleaned_data.get('description')
            messages.success(request, f'others saved for {user}')
            return redirect('Otherpage')
        else:
            return render(request, 'home.html', {'oth': oth})
     else:
        oth = OthersForm()

     if request.method=='GET':
      ot=Others.objects.filter(user=request.user)
      image8 = get_object_or_404(imagepage, description='Profile') 
     context = {
        'ot': ot,
        'oth':oth,
        'image8': image8,
    }
    
     return render(request,'Others.html',context)

@login_required
def edit_note(request, id):
     note=get_object_or_404(Note, id=id)
     
     if request.method =='POST':
         post  = NoteForm(request.POST,instance=note)
         if post.is_valid():
            post.save()
          
            return redirect('Notepage')
     else:
        post = NoteForm(instance=note)
     if request.method=='GET':
      
      image8 = get_object_or_404(imagepage, description='Profile') 
    
     context = {
        'post':post,
        'note':note,
        'image8': image8,
        
    }
    
     return render(request,'edit_note.html',context)
 

@login_required        
def delete_note(request, id):
    note = get_object_or_404(Note, id=id)
     
    if request.method =='POST':
            note.delete()
            return redirect('Notepage')
     
    return render(request,'delete_note.html', {'note':note})
   
 
@login_required 
def edit_file(request, id):
     file = get_object_or_404(Upload, id=id)
     if request.method == 'POST':
         posts = UploadForm(request.POST,instance=file)
         if posts.is_valid():
            posts.save()
            
            return redirect('Uploadpage')
     else:
             posts = UploadForm(instance=file) 
     if request.method=='GET':
      
      image8 = get_object_or_404(imagepage, description='Profile') 
           
     context={
        'posts':posts,
        'file':file,
        'image8': image8,
            
        }   
     return render(request,'edit_file.html',context)  

@login_required
def delete_file(request, id):
    file = get_object_or_404(Upload, id=id)
    
    if request.method == 'POST':
       file.delete()
       return redirect('Uploadpage') 
   
    return render(request, 'delete_file.html')

@login_required
def edit_image(request, id):
     image=get_object_or_404(Image, id=id)
     
     if request.method =='POST':
         img  = ImageForm(request.POST,instance=image)
         if img.is_valid():
            img.save()
          
            return redirect('Imagespage')
     else:
        img = ImageForm(instance=image)
     if request.method=='GET':
      
      image8 = get_object_or_404(imagepage, description='Profile') 
    
    
     context = {
        'image':image,
        'img':img,
        'image8': image8,
        
    }
    
     return render(request,'edit_image.html',context)
 
@login_required
def delete_image(request, id):
    imge = get_object_or_404(Image, id=id)
    
    if request.method == 'POST':
       imge.delete()
       return redirect('Imagespage') 
   
    return render(request, 'delete_image.html')


@login_required
def edit_videos(request, id):
     vde=get_object_or_404(Videos, id=id)
     
     if request.method =='POST':
         vdo  = VideosForm(request.POST,instance=vde)
         if vdo.is_valid():
            vdo.save()
          
            return redirect('Videospage')
     else:
        vdo = VideosForm(instance=vde)
     if request.method=='GET':
      
      image8 = get_object_or_404(imagepage, description='Profile') 
    
    
     context = {
        'vdo':vdo,
        'vde':vde,
        'image8': image8,
        
    }
    
     return render(request,'edit_video.html',context)
 

@login_required 
def delete_videos(request, id):
    vds = get_object_or_404(Videos, id=id)
    
    if request.method == 'POST':
       vds.delete()
       return redirect('Videospage') 
   
    return render(request, 'delete_video.html')



@login_required
def edit_audios(request, id):
     aud=get_object_or_404(Audios, id=id)
     
     if request.method =='POST':
         aus = AudiosForm(request.POST,instance=aud)
         if aus.is_valid():
            aus.save()
          
            return redirect('Audiospage')
     else:
        aus = AudiosForm(instance=aud)
     if request.method=='GET':
      
      image8 = get_object_or_404(imagepage, description='Profile') 
    
    
     context = {
        'aus':aus,
        'aud':aud,
        'image8': image8,
        
    }
    
     return render(request,'edit_audio.html',context)
 

@login_required 
def delete_audios(request, id):
    ad = get_object_or_404(Audios, id=id)
    
    if request.method == 'POST':
       ad.delete()
       return redirect('Audiospage') 
   
    return render(request, 'delete_audio.html')

@login_required
def edit_links(request, id):
     ls=get_object_or_404(Links, id=id)
     
     if request.method =='POST':
         lk  = LinksForm(request.POST,instance=ls)
         if lk.is_valid():
            lk.save()
          
            return redirect('Linkpage')
     else:
        lk = LinksForm(instance=ls)
     if request.method=='GET':
      
      image8 = get_object_or_404(imagepage, description='Profile') 
    
    
     context = {
        'lk':lk,
        'ls':ls,
        'image8': image8,
        
    }
    
     return render(request,'edit_links.html',context)
 
@login_required 
def delete_links(request, id):
    lnk = get_object_or_404(Links, id=id)
    
    if request.method == 'POST':
       lnk.delete()
       return redirect('Linkpage') 
   
    return render(request, 'delete_links.html')

@login_required
def edit_other(request, id):
     otr=get_object_or_404(Others, id=id)
     
     if request.method =='POST':
         oth  = OthersForm(request.POST,instance=otr)
         if oth.is_valid():
            oth.save()
          
            return redirect('Otherpage')
     else:
        oth = OthersForm(instance=otr)
     if request.method=='GET':
      
      image8 = get_object_or_404(imagepage, description='Profile') 
    
    
     context = {
        'oth':oth,
        'otr':otr,
        'image8': image8,
        
    }
    
     return render(request,'edit_other.html',context)
 
@login_required 
def delete_other(request, id):
    ote = get_object_or_404(Others, id=id)
    
    if request.method == 'POST':
       ote.delete()
       return redirect('Otherpage') 
   
    return render(request, 'delete_other.html')
 
@login_required
def resetPassword(request, id):
     user = get_object_or_404(User, id=id)
     
     if request.method =='POST':
         pas  = RegisterForm(request.POST,instance=user)
         if pas.is_valid():
            pas.save()
          
            return redirect('loginpage')
     else:
        pas = RegisterForm(instance=user)
     if request.method=='GET':
      
      image8 = get_object_or_404(imagepage, description='Profile') 
    
    
     context = {
        'user':user,
        'pas':pas,
        'image8': image8,
        
    }
    
     return render(request,'resetPassword.html',context) 
 
 
 
