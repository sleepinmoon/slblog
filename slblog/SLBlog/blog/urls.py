(r'^view/(?P<Blogid>\d+)/$','showBlog'),   '''    
Created on 2012-7-18

@author: Administrator
'''
from django.conf.urls.defaults import patterns

urlpatterns = patterns('blog.views',
    (r'^$','showList'),
    (r'^view/(?P<Blogid>\d+)/$','showBlog'),    
    (r'^label/(?P<labelName>\w+)/$','showBlogByLabel'), 
	(r'^search/$','searchBlogByName'),	
    #(r'^label/(?p<labelName>\w+)/$','showBlogByLabel'),    
                      
)

