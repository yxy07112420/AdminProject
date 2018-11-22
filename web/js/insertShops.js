$(function () {
    console.log("用户名："+$("#username").val());
    //设置一个方法
    function geterror(reg,errortext,val,usTrue){
        if(reg.test(val)){
            usTrue = true;
        }else{
            $(this).parents("td").next().text(errortext);
            usTrue=false;
        }
    }
    var nameistrue = false;
    //对商品名进行正则表达式的验证
    $("#shopName").blur(function () {
        var re = /^([a-zA-Z0-9]){1,10}$/;
        geterror(re,"商品名格式有误，请输入1-10位的数字和字母",$(this).val(),nameistrue);
    })
    var conteristrue = false;
    //对简介进行正则表达式的验证
    $("#shopconter").blur(function () {
        var re = /^(\w){1,20}$/;
        geterror(re,"商品简介有误，请输入1-20位的数字和字母",$(this).val(),conteristrue);
    })
    var moneyistrue = false;
    //对商品价格进行正则表达式的验证
    $("#shopMoney").blur(function () {
        var re = /^(\d)*(\.\d(2))+$/;
        geterror(re,"请输入数字",$(this).val(),moneyistrue);
    })
    var imgistrue = false;
    //对商品图片格式进行正则表达式的验证
    $("#shopImg").blur(function () {
        var re = /^(\w){1,20}\.[png|jpg|svg]$/;
        geterror(re,"当前传输的格式有误，请传入png或jpg或svg格式的图片，图片名不能为空",$(this).val(),imgistrue);
    })
    var dateistrue = false;
    //对商品图片格式进行正则表达式的验证
    $("#shopDate").blur(function () {
        //获取系统当前时间
        var nowDate = new Date();
        //获取传过来的时间
        var times = $(this).val();
        if(times.getTime() > nowDate.getTime()){
            $(this).parent.next.text("时间不能大于当前系统时间");
            dateistrue = false;
        }else{
            dateistrue=true;
        }
    })
    //对新增设置鼠标单击事件
    $("#addShops").click(function () {
        if(nameistrue&&conteristrue&&moneyistrue&&imgistrue&&dateistrue){
            return true;
        }else {
            return false;
        }
    })
})