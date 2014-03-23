/**
 * vest 页面使用javascript
 * @copyright {@link 9iu.org}
 * @author springrain<Auto generate>
 * @version  2014-03-23 14:50:52
 */


jQuery(document).ready(function(){
    
});

//提交表单
function submitUpdateForm(){
var flag=jQuery("#updateForm").form("validate");
if(flag){
submitForm("updateForm");
}

}
