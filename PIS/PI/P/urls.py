
from django.urls import path
from. import views

urlpatterns = [
     path('',views.loginpage,name='loginpage'),
    path('home',views.home,name='home'),
   
    path('index/',views.index,name='index'),
    path('logout/',views.logout,name='logout'),
    path('addCategory/',views.addCategory,name='addCategory'),
    path('Notepage/',views.Notepage,name='Notepage'),
      path('Uploadpage/',views.Uploadpage,name='Uploadpage'),
        path('Imagespage/',views.Imagespage,name='Imagespage'),
          path('Videospage/',views.Videospage,name='Videospage'),
            path('Audiospage/',views.Audiospage,name='Audiospage'),
              path('Linkpage/',views.Linkpage,name='Linkpage'),
                path('Otherpage/',views.Otherpage,name='Otherpage'),
             path('edit_note/<int:id>',views.edit_note,name='edit_note'),
            path('delete_note/<int:id>',views.delete_note,name='delete_note'),
              path('edit_file/<int:id>',views.edit_file,name='edit_file'),
            path('delete_file/<int:id>',views.delete_file,name='delete_file'),
         path('edit_image/<int:id>',views.edit_image,name='edit_image'),
          path('delete_image/<int:id>',views.delete_image,name='delete_image'),
            path('delete_videos/<int:id>',views.delete_videos,name='delete_videos'),
            path('edit_videos/<int:id>',views.edit_videos,name='edit_videos'),
            path('delete_audios/<int:id>',views.delete_audios,name='delete_audios'),
            path('edit_audios/<int:id>',views.edit_audios,name='edit_audios'),
            path('delete_links/<int:id>',views.delete_links,name='delete_links'),
            path('edit_links/<int:id>',views.edit_links,name='edit_links'),
            path('delete_links/<int:id>',views.delete_links,name='delete_links'),
            path('edit_other/<int:id>',views.edit_other,name='edit_other'),
            path('delete_other/<int:id>',views.delete_other,name='delete_other'),
             path('resetPassword/<int:id>',views.resetPassword,name='resetPassword'),
           
    
   
    
]