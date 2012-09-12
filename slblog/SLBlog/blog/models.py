# -*- coding:utf-8 -*-

from django.db import models

# Create your models here.

#文章的标签表
class label(models.Model):
    #id = models.AutoField('id',primary_key=True)
    #文章的标签名
    lname = models.CharField(max_length = 25, verbose_name = '文章类名')
    #baseType = models.ForeignKey('self','id',null = True, blank = True,verbose_name = '所属类表')
    class Meta:
        verbose_name = '文章类名'
        verbose_name_plural = '文章类型列表'
        #按标签名排序
        ordering = ['lname']
    def __unicode__(self):
        return self.lname

#文章表
class essay(models.Model):
    title = models.CharField(max_length = 64)
    pub_time = models.DateField(verbose_name = '发表日期')
    edit_time = models.DateField(verbose_name = '上次修改日期')
    label_id = models.ForeignKey(label,verbose_name="所属类别")
    content = models.TextField(max_length = 2000, verbose_name = '文章内容')
    summary = models.TextField(max_length = 500, verbose_name = '文章摘要')

    class Meta:
        verbose_name = '文章'
        verbose_name_plural = '文章列表'
        #按照发表时间排序
        ordering = ["-pub_time"]
        
        





    def __unicode__(self):
        return self.title    
    
    
#评论表    
class comment(models.Model):
    essay_id  = models.ForeignKey(essay, verbose_name = '所属文章')
    content = models.TextField(max_length = 100)
    pub_time = models.DateField()
    name = models.CharField(max_length = 32)
    email = models.EmailField(max_length = 32)
    class Meta:
        verbose_name = '评论'
        verbose_name_plural = '评论列表'
        #按照文章id和评论时间排序
        ordering = ['essay_id','pub_time']
    def __unicode__(self):
        return self.content
    
    
    



    
    
    
    
    
    