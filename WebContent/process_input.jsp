<%@page import="fr.ensicaen.si.model.Client"%>
<%@page import="java.util.List;"%>
<jsp:useBean id="bean" class="fr.ensicaen.si.bean.Test" scope="session" />
<jsp:setProperty name="bean" property="*" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<% List<Client> clients = bean.retrieveOperations(); %>
<FORM action="process_input.jsp" method="post">
	<select name="idclient">
		<% for (Client c : clients) {%>
		<option value="<%=c.getId()%>">
			<%= c.getName() + " " + c.getSurname() + " " + c.getId() %>
			</option>
		<% } %>
	</select>
	<button type="submit" class="btn btn-primary" style="margin-left:10px;">Search</button>
</FORM>
</body>
</html>