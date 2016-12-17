<jsp:useBean id="bean" class="fr.ensicaen.si.bean.Test" scope="session" />
<jsp:setProperty name="bean" property="*" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<title>Insert title here</title>
		</head>
		<body>
			<br />

			<form action="#" method="post">
				<input type="text" name="firstname" />
				<input type="text" name="lastname" />
				<input type="submit" value="send" />
			</form>

			<!--<form action="#" method="post">
				<input type="hidden" name="cmd" value="byname" />
				<input type="text" name="id" />
				<input type="submit" value="Send" />
			</form>-->
		<br />
		<%= bean.retrieveOperations() %>

		<p>Nom de famille : <%= bean.getLastname() %></p>
		<p>Prénom : <%= bean.getFirstname() %></p>
		<p>ID : <%= bean.getId() %></p>
		<p>Liste des opérations : <%= bean.getOperations() %></p>
	</body>
</html>
