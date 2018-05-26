<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
 Created by Dimple on 2018/5/26/11:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="text-info">学生信息管理</div>
<%--显示信息表格--%>
<table class="table table-hover">
    <thead>
    <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>性别</th>
        <th>身份证</th>
        <th>密码</th>
        <th>专业</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <s:iterator value="list" var="student" >
        <tr>
            <td><s:property value="#student.id"/></td>
            <td><s:property value="#student.name"/></td>
            <td><s:property value="#student.sex"/></td>
            <td><s:property value="#student.idcard"/></td>
            <td><s:property value="#student.password"/></td>
            <td><s:property value="#student.profession"/></td>
            <td>
                <button class="btn btn-outline-secondary" onclick="window.location.href='student_readyUpdate?id=${student.id}'">修改</button>
                <button class="btn btn-outline-danger">删除</button>
            </td>
        </tr>
    </s:iterator>
    </tbody>
    <script>

    </script>
</table>

