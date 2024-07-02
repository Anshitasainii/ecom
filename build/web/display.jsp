<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .grid{
            display: grid;
            height:200px;
            width: 500px;
            grid-autorows:250px 250px;
            grid-template-columns:230px 230px 230px 230px;
            row-gap:10px;
            column-gap:5px;
            margin-left:100px;
            
        }
        .item{
            background-color:pink;
           
        }
    </style>
    <body>
        <%
            String val= request.getParameter("val");
            %>
            <jsp:useBean id="fe" class="model.fetch"/>
            
            <%
            ArrayList<fetch> result=new ArrayList<fetch>();
            result=fe.ret(val);
            
                    %>
                    
                    <div class="grid">
                        <%
                           Iterator show= result.iterator();
                           while(show.hasNext())
                           {
                               fetch obj=(fetch)show.next();
                            out.print(obj.getPhoto()+" "+obj.getName()+" "+obj.getPrice());   
                           }
                        %>
                        
                    </div>     
    </body>
</html>
