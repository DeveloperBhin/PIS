from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.contrib.auth.forms import AuthenticationForm
from .models import *

class RegisterForm(UserCreationForm):
   

    class Meta:
        model = User
        fields = ('username', 'password1', 'password2')
        
        
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['password1'].help_text = None
        self.fields['password2'].help_text = None
        self.fields['username'].help_text = None
        


class LoginForm(AuthenticationForm):
    username = forms.CharField(max_length=254, widget=forms.TextInput(attrs={'autofocus': True}))
    password = forms.CharField(label='Password', widget=forms.PasswordInput)
    
    

     
class imageuploadForm(forms.ModelForm):
    class Meta:
        model=imagepage
        fields=('image','description')

class NoteForm(forms.ModelForm):
    class Meta:
        model=Note
        fields=('tittle','description')
 
class UploadForm(forms.ModelForm):
    class Meta:
        model=Upload
        fields=('file','description')
 
class ImageForm(forms.ModelForm):
    class Meta:
        model=Image
        fields=('image','description')
 
class VideosForm(forms.ModelForm):
    class Meta:
        model=Videos
        fields=('videos','description')
        
        def clean_video(self):
            video = self.cleaned_data.get("videos")
            
            
            if video:
                valid_video_extensions=['mp4','.avi','mov','.mkv']
                extension=audio.name.split('.')[-1].lower()
                if extension is not valid_audio_extensions:
                    raise forms.ValidationError('unsurported file extension')
            
            return video
 
class LinksForm(forms.ModelForm):
    class Meta:
        model=Links
        fields=('Link','description')
 
class OthersForm(forms.ModelForm):
    class Meta:
        model=Others
        fields=('image','Link','Audios','image','videos','file','description')
        
        def clean_video(self):
            video = self.cleaned_data.get("videos")
            
            
            if video:
                valid_video_extensions=['mp4','avi','mov','.mkv']
                extension=audio.name.split('.')[-1].lower()
                if extension is not valid_audio_extensions:
                    raise forms.ValidationError('unsurported file extension')
            
            return video
        def clean_audios(self):
            audio = self.cleaned_data.get("Audios")
            
            
            if audio:
                valid_audio_extensions=['mp3','wav','ogg','.mp4','.mp3']
                extension=audio.name.split('.')[-1].lower()
                if extension is not valid_audio_extensions:
                    raise forms.ValidationError('unsurported file extension')
            
            return audio
          
 
class AudiosForm(forms.ModelForm):
    class Meta:
        model=Audios
        fields=('Audios','description')
        
    def clean_audios(self):
            audio = self.cleaned_data.get("Audios")
            
            
            if audio:
                valid_audio_extensions=['mp3','wav','ogg','.mp4','.mp3']
                extension=audio.name.split('.')[-1].lower()
                if extension is not valid_audio_extensions:
                    raise forms.ValidationError('unsurported file extension')
            
            return audio
          
  