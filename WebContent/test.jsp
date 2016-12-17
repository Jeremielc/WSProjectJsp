<jsp:useBean id="bean" class="fr.ensicaen.si.bean.TestBean"	scope="session" />
<jsp:setProperty name="bean" property="*" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	Bonjour
	<%=bean.getNom()%>

	<br />
	<form action="#" method="post">
		<input type="hidden" name="cmd" value="byname" /> 
		<input type="text" name="nom" />
		<input type="submit" value="Envoyer" />
	</form>
	<br />
	<%=bean.testmethod()%>
</body>
</html>