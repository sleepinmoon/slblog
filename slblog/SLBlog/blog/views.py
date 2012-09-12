#-*-coding:utf-8-*-
# Create your views here.
from django.http import Http404
from django.shortcuts import render_to_response
from models import essay,label
from django.template import RequestContext 


#show the blog list
def showList(request):
    postlist = {}
    blogList = essay.objects.all()
    postlist['list'] = blogList
    postlist['labelList'] = getAllLabel
    return render_to_response('list.html',postlist)

# to get all the label
def getAllLabel():
    return label.objects.all()

# to get one blog by id
def showBlog(request,Blogid):
    postlist = {}
    postlist['labelList'] = getAllLabel
    try:
        Blogid = int(Blogid)
        post = essay.objects.get(id=Blogid)
        postlist['post'] = post
    except essay.DoesNotExist:
        errors = []
        errors.append("the blog what you search does not exist")
        postlist['errors'] = errors
        return render_to_response('list.html',postlist)
    except:
        raise Http404()
    return render_to_response('showalone.html',postlist)

	
# to get blog by label 
def showBlogByLabel(request,labelName):
    postlist = {}
    postlist['labelList'] = getAllLabel
    try:
        labelTemp = label.objects.get(lname = labelName)
        postlist['list'] = labelTemp.essay_set.all()
        postlist['labelName'] = labelName
    except label.DoesNotExist:
        errors = []
        errors.append("the label what you search does not exist")
        postlist['errors'] = errors
    except:
        raise Http404()
    return render_to_response('list.html',postlist)

	
#to get the blog by searching the name
def searchBlogByName(request):
    errors=[]
    postlist = {} 
    postlist['labelList'] = getAllLabel
    if 'search' in request.GET:
        search = request.GET['search']
        if not search:
            errors.append("you must input a subject")
            postlist['errors'] = errors
        else:
            try:
                postlist['list'] = essay.objects.filter(title__contains = search)
            except:
                raise Http404()
    return render_to_response('list.html',postlist)
    

    
    