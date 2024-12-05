<%@page import="com.test.binding.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Register Info</title>
</head>
<body>
<h2>Welcome to CJC!</h2>
<%--
<% Student st=(Student)request.getAttribute("data"); %>
<%=st.getUname() %>
<%=st.getFname() %>
<%=st.getPwd() %>
<%=st.getPhno() %>
<%=st.getEmail() %>   --%>
<%--For Large data --%>
<%--
<% List<Student> st=(List<Student>)request.getAttribute("data"); %>
<% for(Student s:st){%>
   <h1><%= s.getFname() %></h1>
   <h1><%= s.getUname() %></h1>
   <h1><%= s.getPwd() %></h1>
   <h1><%= s.getPhno()%></h1>
   <h1><%= s.getEmail() %></h1>
   


<% } %>
 --%>
 
 <%--For displaying in tabular format --%>
 <% List<Student> st=(List<Student>)request.getAttribute("data"); %>
 <table border="2">
 <thead>
 <tr>
    <th>first name</th>
    <th>user name</th>
    <th>password</th>
    <th>ph no</th>
    <th>Email</th>
 </tr>
 </thead>
 <tbody>
 
  
    <% for(Student s:st){%>
    <tr>
   <td><%= s.getFname() %></td>
   <td><%= s.getUname() %></td>
   <td><%= s.getPwd() %></td>
   <td><%= s.getPhno()%></td>
   <td><%= s.getEmail() %></td>
   </tr>


<% } %> 
 

 </tbody>
 </table>
</body>
</html>