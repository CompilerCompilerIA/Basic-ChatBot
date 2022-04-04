package consoleBot;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
    public static Connection conn(){
        try{
            String url = "jdbc:mysql://localhost/memory";
            String username = "root";
            String pass = "";
            return DriverManager.getConnection(url, username, pass);
        }
        catch(Exception e){System.out.println("A exception ocurred..."); return null;}
    }
}
