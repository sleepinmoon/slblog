'''
Created on 2012-7-18

@author: Administrator
'''
from django.contrib import admin
from models import label,essay,comment

class essayAreaText(admin.ModelAdmin):
    class Media:
        js = ('/static/media/tiny_mce/tiny_mce.js',
              '/static/media/textareas.js',
              )



admin.site.register(label)
admin.site.register(essay,essayAreaText)
admin.site.register(comment) 