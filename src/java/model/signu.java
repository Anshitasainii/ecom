package model;

import java.io.IOException;
import java.sql.DriverManager;

import java.sql.*;

public class signu {

    private String name;
    private String phone;
    private String email;
    private String pass;
    private String add;
    private String gst;

    private String button;
    Connection co;
    PreparedStatement ps;
    ResultSet rs;

    public void setname(String a) {
        name = a;
    }

    public void setphone(String a) {
        phone = a;
    }

    public void setemail(String a) {
        email = a;
    }

    public void setpass(String a) {
        pass = a;
    }

    public void setadd(String a) {
        add = a;
    }

    public void setgst(String a) {
        gst = a;
    }

    public void setbutton(String a) {
        button = a;
    }

    public String getname() {
        return name;
    }

    public String getpass() {
        return pass;
    }

    public signu() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ecom", "root", null);
        } catch (Exception e) {
            System.out.print(e);
        }
    }

    public Boolean up() {
        if (button.equals("Signup as User")) {
            try {
                System.out.print(phone + email);
                ps = co.prepareStatement("select * from user where phone=? and email=?");
                ps.setString(1, phone);
                ps.setString(2, email);
                rs = ps.executeQuery();
                int c = 0;
                while (rs.next()) {
                    c = 0;
                    c = c + 1;
                }
                ps.close();
                if (c == 0) {
                    ps = co.prepareStatement("insert into user(name,pass,phone,email) values(?,?,?,?)");
                    ps.setString(1, name);
                    ps.setString(2, pass);
                    ps.setString(3, phone);
                    ps.setString(4, email);
                    ps.executeUpdate();
                    ps.close();
                    return true;
                } else {
                    System.out.print(phone);
                    return false;
                }

            } catch (Exception ee) {
                System.out.print(ee + "hello");
            }
        } else if (button.equals("Signup as Seller")) {
            try {
                System.out.print(phone + email);
                ps = co.prepareStatement("select * from seller where phone=? and email=?");
                ps.setString(1, phone);
                ps.setString(2, email);
                rs = ps.executeQuery();
                int c = 0;
                while (rs.next()) {
                    c = 0;
                    c = c + 1;
                }
                ps.close();
                if (c == 0) {
                    ps = co.prepareStatement("insert into seller(name,pass,phone,email,address,gst) values(?,?,?,?,?,?)");
                    ps.setString(1, name);
                    ps.setString(2, pass);
                    ps.setString(3, phone);
                    ps.setString(4, email);
                    ps.setString(5, add);
                    ps.setString(6, gst);
                    ps.executeUpdate();
                    ps.close();
                    return true;
                } else {
                    System.out.print(phone);
                    return false;
                }

            } catch (Exception ee) {
                System.out.print(ee + "hello");
            }
        } else {
            System.out.print(email);
            return false;

        }
        return null;
    }
}
