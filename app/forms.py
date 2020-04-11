from django import forms
from django.core.exceptions import ValidationError
import re
from .models import BlogUser


class LoginForm(forms.Form):
    username = forms.CharField(label='用户名', max_length=15, min_length=6, required=True,
                          error_messages={'required': '此参数必填', 'min_length':'用户名是6位'},
                          widget=forms.TextInput(attrs={"class":'form-control', "placeholder":"请输入用户名"}))  # placeholder：提示
    pwd = forms.CharField(required=True, min_length=6, max_length=10,
                          error_messages={'required': '密码不能为空.', 'min_length': "至少6位"},
                          widget=forms.PasswordInput(attrs={"class":'form-control', "placeholder":"请输入密码"}))  # widget=forms.PasswordInput()：加密

    # 单个属性
    def clean_username(self):
        username = self.cleaned_data.get('username')
        
        count = BlogUser.objects.filter(username=username).count()  # 找数量
        if not count:
            raise ValidationError('用户不存在')
        return username


def check_phone(phone):
    result = re.match(r'1[3456789]\d{9}', phone)
    if result:
        return True
    else:
        raise ValidationError('手机号码格式错误')


class RegisterForm(forms.Form):
    username = forms.CharField(label='用户名', required=True, min_length=6, max_length=10,
                               error_messages={'required':'此参数必填', 'min_lenght':'用户名是6位'},
                               widget=forms.TextInput(attrs={'class': 'form-control', "placeholder":"请输入用户名"}))

    phone = forms.CharField(label='手机号', min_length=11, max_length=11,required=True, validators=[check_phone,],
                               error_messages={'required': '此参数必填'},
                               widget=forms.TextInput(attrs={'class': 'form-control', "placeholder":"请输入手机号"}))
    
    
    pwd = forms.CharField(label='密码', required=True, min_length=6, max_length=10,
                          error_messages={'required': '密码不能为空.', 'min_length': "至少6位"},
                          widget=forms.PasswordInput(attrs={"class":'form-control', "placeholder":"请输入密码"}))  # widget=forms.PasswordInput()：加密

    pwd1 = forms.CharField(label='重复密码', required=True, min_length=6, max_length=10,
                           error_messages={'required': '密码不能为空.', 'min_length': "至少6位"}, widget=forms.PasswordInput(attrs={"class":'form-control', "placeholder":"请再次输入密码"}))

    # 单个属性
    def clean_username(self):
        username = self.cleaned_data.get('username')
    
        count = BlogUser.objects.filter(username=username).count()  # 找数量
        if count:
            raise ValidationError('用户名重复')
        return username

    # 单个属性
    def clean_phone(self):
        phone = self.cleaned_data.get('phone')
    
        count = BlogUser.objects.filter(phone=phone).count()  # 找数量
        if count:
            raise ValidationError('手机号已被注册')
        return phone

    
    # 全部属性
    def clean(self):  # 这个函数一定要有返回值
        cleaned_data = self.cleaned_data
        pwd = self.cleaned_data['pwd']
        pwd1 = self.cleaned_data['pwd1']
        if pwd != pwd1:
            raise forms.ValidationError('两次输入密码不匹配')
        return self.cleaned_data  # 注意此处一定要return clean_data,否则会报错