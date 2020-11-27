
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class link {
    public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@invr74dsg1031:1521:orcl12c","MM1041","MM1041");
			System.out.println("Connection Successful");
		}
		catch(ClassNotFoundException cnfe){
			System.out.println("Exception:"+cnfe);
		}
		catch(SQLException se){
			System.out.println("Exception:"+se);
		}
		return con;
	}
    public static void main(String[] a){
        getConnection();
    }
}


