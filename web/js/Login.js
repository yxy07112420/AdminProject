/**
 * 对登录设置登录的相关验证
 */
$(function () {
   $("input[type=submit]").click(function () {
       console.log("我是点击事件");
       console.log($("#username").val());
       if($("#username").val() == "" || $("#password").val() == ""){
           alert("用户名密码不能为空！！！");
           return false;
       }
   })
})