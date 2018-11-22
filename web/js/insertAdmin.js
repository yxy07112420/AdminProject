$(function () {
    $(".result").hide();
    $(".resultConter").hide();
    //对开店类型设置默认
    $("input[name=shopType]:eq(0)").attr("checked",'checked');
    //创建方法
    function isTrue(rs,html1,id){
        $(id).blur(function () {
            console.log($(this).val());
            if(rs.test($(this).val()) == false){
                $(this).parents("td").next().children("div").html("<span style='color: red'>✘</span>").show();
                $(this).parents("td").next().children("span").html(html1).show();
            }else {
                $(this).parents("td").next().children("div").html("<span style='color: greenyellow'>✔</span>").show();
                $(this).parents("td").next().children("span").html("<span style='color: greenyellow'>正确</span>").show();
            }
        })
    }
    //对账户名设置正则表达式的验证
    isTrue(/^([a-zA-Z0-9]){6,15}$/,"<span style='color: red'>请输入6-15位的数字和字母</span>","#username");
    isTrue(/^([a-zA-Z0-9]){6,15}$/,"<span style='color: red'>请输入6-15位的数字和字母</span>","#password");
    isTrue(/^(\d){1,17}(x|X|\d)$/,"<span style='color: red'>请输入正确的身份证格式</span>","#userId");
    isTrue(/^(\d){11}$/,"<span style='color: red'>请输入11位手机号</span>","#telphone");
    isTrue(/^(.){1,20}$/,"<span style='color: red'>请输入20为以内的字符</span>","#shopName");
    isTrue(/^(.){0,100}$/,"<span style='color: red'>请输入100为以内的字符</span>","#shopConter");
    $("#checkPass").blur(function () {
        //判断两次密码是否一致
        if($(this).val() == $("#password").val()){
            $(this).parents("td").next().children("div").html("<span style='color: greenyellow'>✔</span>").show();
            $(this).parents("td").next().children("span").html("<span style='color: greenyellow'>正确</span>").show();
            checkPassIsSuccess = true;
        }else {
            $(this).parents("td").next().children("div").show();
            $(this).parents("td").next().children("div").html("<span style='color: red'>✘</span>");
            $(this).parents("td").next().children("span").show();
            $(this).parents("td").next().children("span").html("<span style='color: red'>两次密码不一致</span>");
            checkPassIsSuccess = false;
        }
    })

    $("#singIn").click(function () {
        if($("#username").val() == null&&$("#password").val() == null&&$("#checkPass").val() == null&&$("#userId").val()==""&&$("#telphone").val() == ""&&$("#shopName").val() == "") {
            alert("请填写正确信息！！！");
            return false;
        }
    })
})