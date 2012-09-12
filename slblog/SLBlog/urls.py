from django.conf.urls.defaults import patterns, include, url
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'SLFlog.views.home', name='home'),
    # url(r'^SLFlog/', include('SLBlog.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    (r'^$','SLBlog.blog.views.showList'),
     #(r'^$','SLBlog.blog.tests.testEssay'),  
     url(r'^blog/', include('SLBlog.blog.urls')),
    # Uncomment the next line to enable the admin:
     url(r'^admin/', include(admin.site.urls)),
    (r'^comments/',include('django.contrib.comments.urls')),
    
    #(r'^staic/(?P<path>.*)$', 'django.views.static.serve', {'document_root': 'template'}),
   
)
