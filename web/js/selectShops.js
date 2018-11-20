$(function () {
    //对删除操作进行相关的事件处理
    deleteNew();
    function deleteNew()
    {
        $(".delete").each(function () {
            $(this).click(function () {
                if(confirm("确定要删除吗？")){
                    $(this).parents("tr").remove();
                    alert("删除成功");
                    return true;
                }
                return false;
            })
        })
    }
})