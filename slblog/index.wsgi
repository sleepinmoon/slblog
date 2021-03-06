import os
import sys
import django.core.handlers.wsgi
import sae

app_root = os.path.dirname(__file__) 
sys.path.insert(0, os.path.join(app_root, 'SLBlog')) 

os.environ['DJANGO_SETTINGS_MODULE'] = 'SLBlog.settings'

application = sae.create_wsgi_app(django.core.handlers.wsgi.WSGIHandler())
