$(function (){
    datastart()
    $("#btn").click(function (){
        var yes=$("#ye").val()
        center(yes)
    })
    $("#btn1").click(function (){
        var yes=$("#ye").val()-1
        center(yes)
        var end=$("#ye").val(yes)
    })
    $("#btn2").click(function (){
        var yes=$("#ye").val()
        var too=parseInt(yes)+1
        center(too)
        var end=$("#ye").val(too)
    })
})
function datastart(){
    $.ajax({
        url:"logined/zhuan",
        type:"post",
        data:{
            ye:1
        },
        dataType:"json",
        success:function(data){
            //清除旧的数据
            $("#find").html("");
            //增加新的数据
            $.each(data,function(i,n){
                var data=i+1
                $("#find").append("<tr>")
                    .append("<td>"+n.name+"</td>")
                    .append("<td>"+n.cellphone+"</td>")
                    .append("<td>"+n.wechat+"</td>")
                    .append("<td>"+n.address+"</td>")
                    .append("<td>"+n.problem+"</td>")
                    .append("<td>"+n.time+"</td>")
                    .append("<td>"+n.date+"</td>")
                    .append('<td> <a href="logined/dell?name='+n.name+'" >删除</a> </td>' )
                    //.append("<td> <a href='logined/dell?name="+n.name+" '>删除</a> </td>")
                    .append("</tr>")

            })
        }
    })
}
function center(yeshu){
    var yes=yeshu
    $.ajax({
        url:"logined/zhuan",
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
                    .append("<td> <a href='logined/dell?name="+n.name+" '>删除</a> </td>")
                    .append("</tr>")

            })
        }
    })
}