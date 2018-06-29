# Meetup

> 一个简单的小网站，登录用户可以发布信息，参与者发表评论。

> 基于[Ruby On Rails](http://rubyonrails.org/)搭建。

> [关于这个网站是怎么搭建的](http://zltunes.com/rails-da-zao-web-app/) 

# Development Environment
    ruby 2.1.2
    rails 4.1.2
    Ubuntu 14.04
    Mac OS X EI Capitan
    
# Build
    configure your rails and nodejs environment
    'bundle'
    
# Preview
![](http://ww4.sinaimg.cn/large/005tGCqhjw1f1pkrow5hkj31kw0vcaqw.jpg)

![](http://ww4.sinaimg.cn/large/005tGCqhjw1f1pkrxjpewj31kw0vb0x3.jpg)

# 亮点

- ###开发环境
  [Vagrant](https://www.vagrantup.com/)+[VirtualBox](https://www.virtualbox.org/wiki/Downloads) 打造跨平台开发环境。

- ### 架构（DRY 原则 更加优雅的MVC）
 - ```layout``` 抽取可复用代码
 - ```partial``` 实现数据与模版分离及模块复用
 - ```Asset Pipeline``` 管理 css 与 js 
 
- ### 安全
 -  ```Strong Parameters``` 防止表单攻击
 -  ```has_secure_password``` ＋ ```authenticate``` 实现加密及验证
 -  密码使用 ```Bcrypt``` 加密
 -  为每个用户分配 ```authtoken```（转换成 base_64 字符串简单加密）后存到 cookies
 -  评论框添加 markdown 支持时 [Redcarpet]((https://github.com/vmg/redcarpet)) 自带 ```filter_html: true``` 过滤可能导致安全隐患的 html 标签

- ### 体验优化
 - [atwho](https://github.com/ichord/jquery-atwho-rails)
 - [hot keys](https://github.com/jeresig/jquery.hotkeys)
 - [markdown](https://github.com/vmg/redcarpet)
 - [代码高亮](https://github.com/tmm1/pygments.rb)
 - [Mail服务](http://guides.rubyonrails.org/action_mailer_basics.html)



