$(function (){
    $("#btn").click(function (){
        datastart()
    })
})
function datastart(){
    var yes=$("#ye").val()
    $.ajax({
        url:"zhuan",
        type:"post",
        data:{
            ye:yes
        },
        dataType:"json",
        success:function(data){
            //清除旧的数据
            $("#find").html("");
            //增加新的数据
            $.each(data,function(i,n){
                $("#find").append("<tr>")
                    .append("<td>"+n.name+"</td>")
                    .append("<td>"+n.cellphone+"</td>")
                    .append("<td>"+n.wechat+"</td>")
                    .append("<td>"+n.address+"</td>")
                    .append("<td>"+n.problem+"</td>")
                    .append("<td>"+n.time+"</td>")
                    .append("<td>"+n.date+"</td>")
                    //.append(" <td><a href='${pageContext.request.contextPath}/dell?name=${requestScope.user2.name}' >删除</a></td>")
                    .append("</tr>")

            })
        }
    })
}