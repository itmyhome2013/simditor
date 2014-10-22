这个项目是对Simditor的一个环境搭建以及扩展图片上传功能的说明

首先如果按照官网Demo进行部署，会出现工具栏按钮样式错位现象
去掉html头部<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
中的PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"即可

第二 本项目对图片上传进行代码演示，结合Struts2.
以及使用syntaxhighlighter对代码进行高亮显示。

使用方法：
下载项目源码 部署到tomcat下，执行init.sql,初始化数据库
浏览器中输入：http://localhost:8080/simditor/ 即可