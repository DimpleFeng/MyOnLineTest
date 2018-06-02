<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
 Created by Dimple on 2018/5/26/11:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="text-info">试卷管理</div>

<button class="btn btn-outline-primary" style="float: right;" type="button"
        onclick="window.location.href='paper_readyAdd'">添加试卷
</button>


<%--显示信息表格--%>
<table class="table table-hover">
    <thead>
    <tr>
        <th>ID</th>
        <th>试卷名称</th>
        <th>添加日期</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <s:iterator value="papers" var="paper">
        <tr>
            <td><s:property value="#paper.id"/></td>
            <td><s:property value="#paper.name"/></td>
            <td><s:property value="#paper.createTime"/></td>
            <td>
                <button class="btn btn-outline-secondary"
                        onclick="window.location.href='paper_readyUpdate?id=${paper.id}'">修改
                </button>
                <a href="paper_delete?id=${paper.id}" class="btn btn-outline-danger" id="delete">删除</a>
                <input type="hidden" value="${paper.name}">
            </td>
        </tr>
    </s:iterator>
    </tbody>

    <script>
        $(function () {
            $("#delete").click(function () {
                var name = $(this).next(":input").val();
                var flag = confirm("你确定要删除" + name + "的信息吗？");
                if (flag) {
                    return true;
                }
                return false;
            })
        })
    </script>
</table>


