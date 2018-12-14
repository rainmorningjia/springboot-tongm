<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<script type="text/javascript">
    $(function() {
        //定义商品数据表格
        $("#dguser")
            .datagrid(
                {
                    fitColumns : true,
                    title : "用户管理",
                    url : "${pageContext.request.contextPath}/user/queryAll",
                    rownumbers : true,
                    columns : [ [
                        {
                            field : "id",
                            title : "ID",
                            width : 100,
                            sortable : true
                        },
                        {
                            field : "name",
                            title : "姓名",
                            width : 100,
                            sortable : true
                        },
                        {
                            field : "birthday",
                            title : "生日",
                            width : "100",
                            sortable : true
                        }
                    ] ]
                });
    })
</script>
<div>
    <h1 align="center">用户管理</h1>
    <table id="dguser"></table>
</div>
