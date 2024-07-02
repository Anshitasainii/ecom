package model;


import java.sql.*;

public class sign 
{   
    private String name;
    private String phone;
    private String pass;
    private String button;
     Connection co;
    PreparedStatement ps;
    ResultSet rs;
    public void setphone(String a)
    {
        phone=a;
    }
    public void setpass(String a)
    {
        pass=a;
    } public void setbutton(String a)
    {
        button=a;
    }
    public String get()
    {
        return name;
    }
    public String getpass()
    {
        return pass;
    }
   
     public sign()
    {
         try{
            Class.forName("com.mysql.jdbc.Driver");
            co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ecom", "root", null);
        } catch (Exception e) {
            System.out.print(e);
        }
    }
     
      public Boolean in()
    {
        if(button.equals("Signin as user"))
        {
        try
        {
      ps= co.prepareStatement("select * from user where phone=? and pass=?");
                    ps.setString(1, phone);
                    ps.setString(2, pass);
                    rs= ps.executeQuery();
                    int c=0;
                    while(rs.next())
                    {
                        this.name=rs.getString(2);
                        System.out.print(name);
                        c=0;
                        c=c+1;
                    }
                    if(c==0)
                    {
                     return false;
                    } 
                    else
                    {
                       return true;
                      
                    }
            }
        catch (Exception ee) {
                    System.out.print(ee);
        }
    }else if(button.equals("Signin as Seller")){
            try
        {
      ps= co.prepareStatement("select * from seller where phone=? and pass=?");
                    ps.setString(1, phone);
                    ps.setString(2, pass);
                    rs= ps.executeQuery();
                    int c=0;
                    while(rs.next())
                    {
                        c=0;
                        c=c+1;
                    }
                    if(c==0)
                    {
                     return false;
                    } 
                    else
                    {
                       return true;
                      
                    }
            }
        catch (Exception ee) {
                    System.out.print(ee);
        }
            }
   
        return null;
    
}
}

