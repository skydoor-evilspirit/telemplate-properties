<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<#--定义变量-->
<#assign str="类好哇~~~">
<h1>${str}</h1>
<h1>${test}</h1>
<#--字符串的拼接方式-->
<p> Hello ${str + test} </p>
<#--字符串的内嵌函数-->
<h1>${test?substring(0,5)}</h1>
<h1>${test?length}</h1>

<#--判断变量不能为空,为空的话不显示，如果不这样判断，到时候会报错-->
${test!}
${test!"default"}<#--给定默认值，如果为空，自动显示默认值-->

<#--判断语句-->
<#assign num=3>
<#if num==1>
    <h1>我是num1</h1>
<#elseif num==2>
    <h1>我是num2</h1>
<#else>
    <h1>我是num3</h1>
</#if>

<#switch num>
    <#case 1>
        <h1>我是num1</h1>
        <#break>
    <#case 2>
        <h1>我是num2</h1>
        <#break>
    <#case 3>
        <h1>我是num3</h1>
        <#break>
    <#default >
        <h1>我是多余的~~~</h1>
</#switch>

<#--list的使用-->
<#assign myList=['张三','李四','王五','黄三']>
<#list myList as item>
    <h1>${item}</h1>
    <h1>${"item的序号"+item_index}</h1>
    <#if !item_has_next>
        <h1>${"最后一个人是"+item}</h1>
    </#if>
</#list>

<#list [1,2,3] as item>
    ${item}
</#list>

<#list 1..3 as item>
    ${item}
</#list>


<#--引入其他文件中变量的方法  不只可以读取  还可以修改-->
<#import "index2.ftl" as index2>
${index2.name}
<#assign name="猩猩的拳" in index2>
${index2.name}


</body>
</html>