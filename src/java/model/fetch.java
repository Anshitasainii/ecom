 package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 import java.util.*;

public class fetch {
    private String photo ;
    private String name;
     private int price;    
    
    Connection co;
    PreparedStatement ps;
    ResultSet rs;
    
    fetch(String p, String s, int a) {
        
        photo=p;
        name=s;
        price=a;
       
    }
    
    public String getPhoto()
    {
        return photo;
    }
    public String getName()
    {
        return name;
    }
    public int getPrice()
    {
        return price;
    }
     public fetch()
    {
         try{
            Class.forName("com.mysql.jdbc.Driver");
            co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ecom", "root", null);
        } catch (Exception e) {
            System.out.print(e);
        }
    }
 
    
    public ArrayList<fetch> ret(String cat){
       ArrayList<fetch> result= new ArrayList<fetch>();
       
       try{
             ps=co.prepareStatement("select * from product where catagory=?");
             ps.setString(1, cat);
             rs=ps.executeQuery();
             while(rs.next()){
                  result.add(new fetch(rs.getString(4),rs.getString(3),rs.getInt(5)));
             }
             
       }catch(Exception e){
           System.out.print(e);
       }
  
        return result;
        
        
    }
    
    
}
