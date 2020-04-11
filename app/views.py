from django.shortcuts import render
from .models import *
from django.views.generic import View #写类视图
from django.http import HttpResponse
from pure_pagination.paginator import Paginator, PageNotAnInteger
from django.db.models import Q
from django.contrib.auth import authenticate,logout,login  # 验证方法、退出方法、登录方法
from django.contrib.auth.decorators import login_required  # 验证登录   装饰器方法
from django.views.decorators.http import require_http_methods
from django.shortcuts import redirect,reverse # 最强cp    redirect,reverse
from .forms import LoginForm,RegisterForm

# Create your views here.

# 创建类视图     类视图
class BaseView(View):
    def get(self,request,*args,**kwargs):
        commets = Comment.objects.filter(is_delete=False).all()  # 最新发布的数据

        art_ids = []
        new_commets = []  # 最新评论的文章列表
        for comment in commets:
            if comment.article.id not in art_ids:
                art_ids.append(comment.article.id)
                new_commets.append(comment)
        # new_commets = list(set(newcoms_art))[:10] # 过滤评论文章后显示重复  取前10条
        return new_commets

# 首页视图      类视图
class IndexView(BaseView):
    def get(self,request,*args,**kwargs):
        new_commets =super().get(request,*args,**kwargs)
        banners = Banner.objects.filter(is_delete=False).all()  # 轮播图
        top_article = Article.objects.filter(is_delete=False,is_top=True).all()  # 推荐文章数据
        cats = Category.objects.filter(is_delete=False).all()  # 分类数据
        all_article = Article.objects.filter(is_delete=False).all()[:10]  # 最新发布的数据只取前10条
        fks = FriendLink.objects.filter(is_delete=False).all()
        count = Article.objects.count()     # 日志数
        return render(request,'index.html',locals())

# 列表页视图     类视图
class ListView(BaseView):
    def get(self,request,*args,**kwargs):
        new_commets =super().get(request,*args,**kwargs)
        all_article = Article.objects.filter(is_delete=False).all() # 查所有文章
        tags = Tag.objects.filter(is_delete=False).all()  # 所有标签    标签云
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_article, per_page=1, request=request)
        # 注意：跟前端遍历一样
        all_article = p.page(page)
        return render(request,'list.html',locals())

# 详情页视图     类视图
class DetailView(BaseView):
    def get(self,request,*args,**kwargs):
        count = Article.objects.count()   # 日志数
        id = kwargs.get('id')
        new_commets = super().get(request, *args, **kwargs)
        try:
            article = Article.objects.get(id=id)
            article.vnum+=1
            article.save()
            
            # 先找到这篇文章的标签
            tags = article.tag.all()
            # ['IU','明星']
            recommend_articles = [] # [[],[],[]]  只能是数据对象，不能是列表对象
            for tag in tags:
                recommend_articles.extend(tag.article_set.all()) # 不能用append  不然会列表嵌套列表 [[],[],[]]
            recommend_articles = list(set(recommend_articles))[:10] # 去重set   先集合后列表  取前10条
            
            comments = article.comment_set.all()  # 所有评论显示
            return render(request,'show.html',locals())
        except Article.DoesNotExist:
            return render(request,'404.html')
        # return render(request,'show.html',locals())

# 分类文章      类视图
class CategoryView(BaseView):
    def get(self,request,*args,**kwargs):
        id = kwargs.get('id')
        new_commets = super().get(request, *args, **kwargs)
        tags = Tag.objects.filter(is_delete=False).all()  # 所有标签    标签云
        try:
            category = Category.objects.get(id=id)
            all_article = category.article_set.all() # 一对多  所有文章
            try:
                page = request.GET.get('page', 1)
            except PageNotAnInteger:
                page = 1
            p = Paginator(all_article, per_page=1, request=request)
            # 注意：跟前端遍历一样
            all_article = p.page(page)
            return render(request, 'list.html', locals())
        except Category.DoesNotExist:
            return render(request, '404.html')

# 标签文章      类视图
class TagView(BaseView):
    def get(self,request,*args,**kwargs):
        id = kwargs.get('id')
        new_commets = super().get(request, *args, **kwargs)
        tags = Tag.objects.filter(is_delete=False).all()  # 所有标签    标签云
        try:
            tag = Tag.objects.get(id=id)
            all_article = tag.article_set.all() # 一对多  所有文章
            try:
                page = request.GET.get('page', 1)
            except PageNotAnInteger:
                page = 1
            p = Paginator(all_article, per_page=1, request=request)
            # 注意：跟前端遍历一样
            all_article = p.page(page)
            return render(request, 'list.html', locals())
        except Category.DoesNotExist:
            return render(request, '404.html')

# 搜索    类视图
class SearchView(BaseView):
    def get(self, request, *args, **kwargs):
        kw = request.GET.get('kw')
        all_article = Article.objects.filter(Q(title__icontains=kw)|Q(content__icontains=kw)).distinct() # distinct()：去重
        tags = Tag.objects.filter(is_delete=False).all()  # 所有标签    标签云
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_article, per_page=1, request=request)
        # 注意：跟前端遍历一样
        all_article = p.page(page)
        return render(request, 'list.html', locals())

# 登录    类视图
class LoginView(View):
    def get(self, request, *args, **kwargs):
        login_form = LoginForm()
        return render(request, 'login.html', locals())
    def post(self, request, *args, **kwargs):
        login_form = LoginForm(request.POST)
        if login_form.is_valid(): # 验证成功  登录用户
            username = login_form.cleaned_data.get('username')
            pwd = login_form.cleaned_data.get('pwd')
            user = authenticate(request=request,username=username,password=pwd)
            if user:
                login(request, user)
            return redirect(reverse('app:index'))
        else:
            return render(request, 'login.html', locals())

# 注册    类视图
class RegisterView(View):
    def get(self, request, *args, **kwargs):
        reg_form = RegisterForm()
        return render(request, 'register.html', locals())
    def post(self, request, *args, **kwargs):
        reg_form = RegisterForm(request.POST)
        if reg_form.is_valid(): # 验证成功  注册用户
            phone = reg_form.cleaned_data.get('phone')
            username = reg_form.cleaned_data.get('username')
            pwd = reg_form.cleaned_data.get('pwd')
            BlogUser.objects.create_user(phone=phone, username=username,
                                         password=pwd)  # create_superuser():管理员用户  create_user():普通用户
            return redirect(reverse('app:login'))
        else:
            return render(request, 'register.html', locals())

# 退出    函数视图
def log_out(request):
    logout(request)
    return redirect(reverse("app:index"))

# 评论
@require_http_methods(['POST'])  # 这个方法只能用post发起请求
@login_required  # 评论前必须先登录     验证是否登录
def comment(request):
    if request.method == 'POST':
        content = request.POST.get('content')
        id = request.POST.get('id')  # 评论文章id
        if not content:
            return redirect(reverse('app:detail', kwargs={"id":id}))
        user = request.user
        try:
            article = Article.objects.get(id=id)
            Comment.objects.create(content=content, article=article, users=user)
            return redirect(reverse('app:detail', kwargs={"id":id}))
        except Exception as e:
            return render(request, '404.html')

