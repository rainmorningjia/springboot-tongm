<%@page contentType="text/html; charset=UTF-8" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>展示用户</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/easyui/themes/icon.css">
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/easyui/jquery-1.8.3.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script>
            $(function(){
                //创建tabs栏
                $("#tab").tabs({
                    pill : true,
                    width : 870,
                    height : 550,
                    tools : [ {
                        iconCls : "icon-man",
                        handler : function() {

                        }
                    } ],
                    onSelect : function(title) {

                    }
                });
                //定义导航栏
                $("#tree").tree({
                    data:[{
                        text:"导航栏",
                        state:"closed",
                        children:[{
                            text:"用户管理"
                        }]
                    }],
                    onClick:function(node){
                        if ($("#tree").tree("isLeaf",node.target)){
                            if($("#tab").tabs("exists",node.text)){
                                $("#tab").tabs("select",node.text);
                            }else{
                                if(node.text=="用户管理"){
                                    $("#tab").tabs("add",{
                                        title:"用户管理",
                                        closable:true,
                                        selected:true,
                                        href:"${pageContext.request.contextPath}/userList.jsp"
                                    });

                                }
                            }
                        }
                    }
                });
            })
    </script>
</head>
<body>
<div align="center" style="width: 1080px;margin-left: 159px">

    <div id="cc" class="easyui-layout" style="width:1080px;height:600px;">
        <div data-options="region:'north',title:'头部',split:true" style="height:100px;"></div>
        <div data-options="region:'south',title:'底部',split:true" style="height:100px;"></div>
        <div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;"></div>
        <div data-options="region:'west',title:'West',split:true" style="width:100px;">
            <ul id="tree" class="easyui-tree"></ul>
        </div>
        <div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
            <div id="tab"></div>
        </div>
    </div>
</div>

</body>
</html>
