//检查性别 
function checkGender()
{
	var genderNum = document.getElementsByName("sex");
	var gender = "";
				
	for(var i = 0; i<genderNum.length; ++i)
	{
	if(genderNum[i].checked)
		gender = genderNum[i].value;
	}
	if(gender == "")
	{
		document.getElementById("tips_sex").innerHTML = "<em style='color:red;'>至少选择一项！</em>";
		return false;
	}
	else
	{
		document.getElementById("tips_sex").innerHTML = "<em style='color: green;'> OK</em>"
	}
}
			
//检查爱好			
function checkHobby()
{
	var hobby = 0;
	var objNum = document.getElementsByName("hobby");
	for(var i = 0; i<objNum.length; ++i)
	{
		if(objNum[i].checked == true)
			hobby++;
	}
	if(hobby >= 1)
	{
		document.getElementById("tips_hobby").innerHTML = "<em style='color: green;'>OK</em>";
	}
	else
	{
		document.getElementById("tips_hobby").innerHTML = "<em style='color: red;'>至少选择一项爱好</em>";
		return false;
	}
}
			
//检查用户名
function checkUsername()
{
	var nameLen = document.getElementById("txtUsername").value.length;
	if(nameLen >= 6 && nameLen <= 18)
	{
		document.getElementById("tips_username").innerHTML = "<em style='color: green;'>验证通过！</em>";
		//return true;
	}
	else
	{
		alert("必须填写正确用户名！");
		document.getElementById("tips_username").innerHTML = "<em style='color: red;'>用户名必须由6-18位字符组成，请重新输入！</em>";
		document.getElementById("txtUsername").focus(); 
		return false;
	}
}
			
//检查输入域
function checkForm()
{
	//检查密码是否有效
	var reg = /[^A-Za-z0-9_] + /;
	var regs = /^[A-Za-z0-9_\u4e00-\u9fa5] + $/;
	var pd = document.getElementById("txtPWD").value;
	if((pd.length >= 6 && pd.length <=18) && !regs.test(pd))
	{
		document.getElementById("tips_password").innerHTML = "<em style='color: green;'>OK</em>";
	}
	else
	{
		document.getElementById("tips_password").innerHTML = "<em style='color: darkred;'>密码必须由6-18位字符组成，且必须包含字母，数字和标点符号</em>";
		document.getElementById("txtPWD").focus();
		return false;
	}
				
	//检验两次密码匹配
	var rptpd = document.getElementById("txtRPT").value;
	if(rptpd != pd)
	{
		document.getElementById("tips_pwdrepeat").innerHTML = "<em style='color: red;'>两次输入的密码不匹配！</em>";
		document.getElementById("txtRPT").focus();
		return false;
	}
	else
	{
		document.getElementById("tips_pwdrepeat").innerHTML = "<em style='color: green;'>OK</em>";
	}
				 
	//检查用户类型
	var value = document.getElementById("txtUsertype").value;
	if( value == -1 )
	{
		document.getElementById("tips_usertype").innerHTML = "<em style='color: red;'>未知用户类型！</em>";
		document.getElementById("txtUsertype").focus();
		return false;
	}
	else
	{
		document.getElementById("tips_usertype").innerHTML = "<em style='color:green;'>OK</em>";
	}
				
	//检查出生日期
	var birthdate = document.getElementById("txtBirth").value;
	if(birthdate == "")
	{
		document.getElementById("tips_birth").innerHTML = "<em style='color: red;'>出生日期无效，请重新选择！</em>"
		document.getElementById("txtBirth").focus();
		return false;
	}
	else
	{
		document.getElementById("tips_birth").innerHTML = "<em style='color: green;'>OK</em>";
	}
				
}
			
//检查电子邮件
function checkEmail()
{
	var email = document.getElementById("txtEmail").value;
	var pattern = /^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
	  //  ^[a-zA-Z0-9#_\^\$\.\*\+\-\?\=\!\:\|\\\/\(\)\[\]\{\}] + @[a-zA-Z0-9] + ((\.[a-zA-Z0-9_-]{2,3}){1,2})$           
	if(email.length ==0)
	{
		document.getElementById("tips_email").innerHTML = "<em style='color: red;'>E-mail地址不可为空！</em>";
		document.getElementById("txtEmail").focus();
		return false;
	}
	else if( !pattern.test(email))
	{
		document.getElementById("tips_email").innerHTML = "<em style='color: orangered;'>E-mail地址不合法，请重新输入</em>";
		document.getElementById("txtEmail").focus();
		return false;
	}
	else
	{
		document.getElementById("tips_email").innerHTML = "<em style='color: green;'>OK</em>";
	}
}
			
//检查自我介绍
function checkInfo()
{
	var InfoLen = document.getElementById("txtIntro").value.length;
	if(InfoLen > 100) 
	{
		document.getElementById("tips_introduction").innerHTML = "<em style='color: red;'>字数超过上限（100字）！</em>";
		document.getElementById("txtIntro").focus();
		return false;
	}
	else
	{
		document.getElementById("tips_introduction").innerHTML = "<em></em>";
	}
}
