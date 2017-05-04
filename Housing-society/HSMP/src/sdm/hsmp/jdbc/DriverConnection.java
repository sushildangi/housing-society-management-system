package sdm.hsmp.jdbc;

import java.sql.*;

public class DriverConnection {
	
	private static Connection con;
    static{
        try{
        Class.forName("oracle.jdbc.OracleDriver");
        String url="jdbc:oracle:thin:@localhost:1521:XE";
        con=(Connection) DriverManager.getConnection(url,"housedb","123456");
        }catch(Exception e)
        {
            System.out.println("CONNECTION ERROR : "+e.getMessage());
        }
    }    
    public static Connection get_connection(){
    	return con;
    }
       //FUNCTIONAL UTILITIES
       public static int updateOperation(String dmlQuery)
       {
        try{
          Statement st = ((java.sql.Connection) con).createStatement();
          int result = st.executeUpdate(dmlQuery);
          return result;
        }catch(Exception e){
            System.out.println("UPDATE ERROR : "+e.getMessage());
            return -1;
        }
       }
       
       public static ResultSet selectOperation(String projQuery)
       {
        try{
        	//System.out.println(con);
          Statement st = ((java.sql.Connection) con).createStatement();
          ResultSet rs = st.executeQuery(projQuery);
          return rs;
        }catch(Exception e){
            System.out.println("SELECT ERROR : "+e.getMessage());
            return null;
        }
       }


}
