---
id: 815
title: DDToWP
date: '2014-04-19T10:19:22+08:00'
author: Michael
layout: revision
guid: 'http://www.gakky.me/815.html'
permalink: '/?p=815'
---

**介绍**

DDToWP是DianDianToWordPress的简写，用Ruby实现了点点博客搬家到WordPress。

项目托管地址：<https://github.com/luckylu/ddtowp>

**使用前须知：**

1、准备Ruby的执行环境（建议使用虚拟机装Linux，Ruby version:2.1.1p76，其他版本未测试）

2、如果博客有博文是使用自定义链接的，需先把自定义链接换成点点自动生产的地址

像这种地址：www.yui-aragaki.org/post/2012-01-22/15204291

3、必须使用以下模版，搬家前请先切换到如下模版

[明与暗](http://www.diandian.com/themes/64/show)

**未能完成的功能：**

1、没有实现评论搬家

2、自己臆断可能WXR的限制，未能把长篇幅的文章导入到Wordpress中

**实现的功能：**

1、博文搬家

2、图片下载到本地并替换图片地址到指定的新域名

3、标签保留，分类由文章类型决定

4、若标题为空，则抓取博文描述的前20个字符

**设计原理：**

1、程序会爬取博客每一页的博文地址并保存下来

2、程序会读取每一个博文地址并爬取上面的内容

3、程序把图片保存到本地，并替换图片地址

4、程序把爬取的内容按照WordPress eXtended Rss的规范写入文件用于导入wordpress

**用法：**

`ruby ddtowp.rb 'diandian_domain' 'new_domain' 'page_num'`

diandian\_domain:点点网的博客域名

new\_domain:要搬家的新域名

page\_num:博客总页数

for example

`ruby ddtowp.rb 'www.yui-aragaki.org' 'www.yui-aragaki.org' '79'`

执行完毕后会生成两个文件，一个目录

post\_url 所有博文地址

wp.rss 用于导入wordpress的文件，工具 -&gt; 导入 -&gt; WordPress

img目录 图片存放位置，程序执行完毕后，把下载完成的图片上传到 wp-content/uploads 目录下

**截图**

博文较多，跑了6个小时才跑完

![DDToWP](https://camo.githubusercontent.com/97066a860621233dd8918ec3027f35a2e217f042/687474703a2f2f7777332e73696e61696d672e636e2f6d773639302f3639633666646134677731656665317639676776736a32306935306271337a6c2e6a7067)

**版本：**

2014.4.13：V1.0

**License：**

Licensed under MIT