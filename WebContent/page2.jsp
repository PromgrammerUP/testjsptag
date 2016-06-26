<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//jsp:useBean标签相当于request.getAttribute("userID");
		//id表示在jsp中定义一个叫做userId的变量，类型为type修饰的类型id必须与setattribute()设置的key值相等 
		//beanName:相当于从request中根据beanName取值
		//scope:可选项，如果存在则表示从该scope（page,request,session,application）中取得对象
		//如果不写，默认从page,request,session,application依次寻找beanName的值，如果都没有则报错。
		//本例中表示从reqeust中取值
		//type:表示变量的类型
	%>
	<jsp:useBean id="userId" beanName="userId" scope="request" type="java.lang.String"></jsp:useBean>
	<jsp:useBean id="user" beanName="user" scope="request" type="org.javachina.testjsptag.dto.LoginUserDto"></jsp:useBean>
	<%
		out.println(userId);
		out.println(user.getUserName()+":"+user.getPassword());
		//
		//forward相当于request.getRequestDispatcher("/page3.jsp").forward(request,response);
		
	%>
	<jsp:forward page="/page3.jsp"></jsp:forward>
</body>
</html>