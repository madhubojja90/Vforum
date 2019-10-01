<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title>  
</head>  
<body>  
  
<%@page import="com.vir.model.*,com.vir.service.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>answer List</h1>  
  
<%  

QuestionServiceInterface qs= new QuestionInterfaceImpl();
int empid=Integer.parseInt(request.getParameter("empid"));
List<Question> list=qs.getQuestionByEmpid(empid);

request.setAttribute("list",list);
%>  
 <table>
 <tr><th>qid</th><th>empid</th><th>qdesc</th></tr>
 <%
 for(int i=0;i<list.size();i++)
 {
 %>
 <tr>
 <td><%= list.get(i).getQid()%></td> 
  <td><%= list.get(i).getEmpid()%></td> 
  <td><%= list.get(i).getQdesc()%></td> 
    
 
  </tr>
 <%
 }
 %>
</table>
 

<%-- <table border="1" width="90%">  
<tr><th>qid</th><th>empid</th><th>qdesc</th></tr>  

<c:forEach items="${list}" var="u">  
<tr><td>${u.getQid()}</td><td>${u.getEmpid()}</td><td>${u.getAns_desc()}</td>   
  
</c:forEach>  
</table>   --%>
<br/><a href="addQuestion.html">Add Question</a>  
  
</body>  
</html>  