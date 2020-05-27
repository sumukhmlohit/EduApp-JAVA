package login;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import edu.*;

public class TLoginDao {
	String sql="select * from teacherlogin where tid=? and password=?";
	
	
	public boolean check(String uname,String pass) {
		try {
		
		ConnectionProvider ob=new ConnectionProvider();
		Connection con=ob.getCon();	
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, uname);
		st.setString(2,pass);
		ResultSet rs=st.executeQuery();
		if(rs.next())
		{
			return true;
		}
		con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
		
	}
	
	
}
