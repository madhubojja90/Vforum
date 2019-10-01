<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%		  
        int empid=(Integer) session.getAttribute("empid"); 
        
 %>
 <form action=AddQuestionServlet method=post>
<table>
<tr><td>empid:</td><td><input type="text" name="empid" value=<%=empid %> readonly/></td></tr>  
<tr><td></td><td><input type="hidden" name="qid"/></td></tr>

<tr><td>qdes:</td><td><input type="text" name="qdesc"/></td></tr>  
<tr><td colspan="2"><input type="submit" value="Save question"/></td></tr>  

</table>
</form>
</body>
</html>