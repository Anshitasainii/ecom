<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.*"%>
<%
    String s1 = request.getParameter("user");
    String s2 = request.getParameter("pa");
    String s3 = request.getParameter("su");
    String s4 = request.getParameter("phone");
    String s5 = request.getParameter("email");
    String s6 = request.getParameter("add");
    String s7 = request.getParameter("gst");

    if (s3.equals("Signup as User")) {
%>
<jsp:useBean id="suu" class="model.signu"/>
<jsp:setProperty name="suu" property="name" value="<%=s1%>"/>
<jsp:setProperty name="suu" property="pass" value="<%=s2%>"/>
<jsp:setProperty name="suu" property="button" value="<%=s3%>"/>
<jsp:setProperty name="suu" property="phone" value="<%=s4%>"/>
<jsp:setProperty name="suu" property="email" value="<%=s5%>"/>


<%  Boolean b = suu.up();
                 if (b == true) {
 session.setAttribute("user", s1);%>
<jsp:forward page="home.jsp?val=home"/>           
<% } else {%>
<jsp:forward page="sorry.html"/>    

<% }
     } else if (s3.equals("Signin as user")) {%>
<jsp:useBean id="siu" class="model.sign"/>
<jsp:setProperty name="siu" property="phone" value="<%=s4%>"/>
<jsp:setProperty name="siu" property="pass" value="<%=s2%>"/> 
<jsp:setProperty name="siu" property="button" value="<%=s3%>"/> 
<%  Boolean b = siu.in();
    if (b == true) { 
        String ss=siu.get();
    session.setAttribute("user", ss);
%>   
<jsp:forward page="home.jsp?val=home"/>
<%} else {%>
<jsp:forward page="sorry.html"/>    

<% }
} else if (s3.equals("Signup as Seller")) {
%>
<jsp:useBean id="sus" class="model.signu"/>
<jsp:setProperty name="sus" property="name" value="<%=s1%>"/>
<jsp:setProperty name="sus" property="pass" value="<%=s2%>"/>
<jsp:setProperty name="sus" property="button" value="<%=s3%>"/>
<jsp:setProperty name="sus" property="phone" value="<%=s4%>"/>
<jsp:setProperty name="sus" property="email" value="<%=s5%>"/>
<jsp:setProperty name="sus" property="add" value="<%=s6%>"/>
<jsp:setProperty name="sus" property="gst" value="<%=s7%>"/>


<%  Boolean b = sus.up();
    if (b == true) {
        session.setAttribute("user", s1);
%>
<jsp:forward page="sellerpanel.jsp"/>           
<% } else {%>
<jsp:forward page="sorry.html"/>    

<% }
    }else if (s3.equals("Signin as Seller")) {%>
<jsp:useBean id="sis" class="model.sign"/>
<jsp:setProperty name="sis" property="phone" value="<%=s4%>"/>
<jsp:setProperty name="sis" property="pass" value="<%=s2%>"/> 
<jsp:setProperty name="sis" property="button" value="<%=s3%>"/> 
<%  Boolean b = sis.in();
    if (b == true) {
        session.setAttribute("user", s1);
%>
<jsp:forward page="sellerpanel.jsp"/>           
<% } else {%>
<jsp:forward page="sorry.html"/>    

<% }
}
%>

