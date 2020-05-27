package signup;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import edu.ConnectionProvider;

public class TSignupDao {
	String sql="insert into teacherlogin values(?,?)";
	
	public void insertdetails(String uname,String pass) {
		try {
			
		ConnectionProvider ob=new ConnectionProvider();
		Connection con=ob.getCon();	
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, uname);
		st.setString(2,pass);
		
		int rs=st.executeUpdate();
		con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	
}
