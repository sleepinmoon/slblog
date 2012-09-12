"""
This file demonstrates writing tests using the unittest module. These will pass
when you run "manage.py test".

Replace this with more appropriate tests for your application.
"""

from blog.models import essay
from django.shortcuts import render_to_response
from django.http import Http404,HttpResponse

def testEssay(request):
    postlist = {}
    #blogList = essay.objects.all()
    #postlist['list'] = blogList
    return HttpResponse("hello")