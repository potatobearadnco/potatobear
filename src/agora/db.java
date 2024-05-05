/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package agora;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author tano0
 */
public class db {
    public static Connection mycon(){
        
        Connection con = null;
        try {
           
            Class.forName("com.mysql.jdbc.Driver");

           
            con = DriverManager.getConnection("jdbc:mysql://localhost/pos", "root", "");
            return con;
        } catch (ClassNotFoundException | SQLException e) {
            
            
            
            System.out.println(e); // Handle the exception properly in your application
            return null;
        }
        
    }
}

