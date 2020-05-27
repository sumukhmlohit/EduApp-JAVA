package edu;

import java.sql.*;


public class ConnectionProvider {
	 
	
		
	
	public Connection getCon(){
		Connection con=null;
		try{
			
			Class.forName(Provider.DRIVER);
			con=DriverManager.getConnection(Provider.CONNECTION_URL,Provider.USERNAME,Provider.PASSWORD);
			}catch(Exception e){}
		return con;
	}
	//The superclass "javax.servlet.http.HttpServlet" was not found on the Java Build Path
	
}
