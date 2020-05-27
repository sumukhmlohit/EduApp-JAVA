package passwordchange;
import edu.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ChangePasswordDao {
	String sql="update login  set pass=? where uname=? and pass=?";
	
	
	public void updatedetails(String uname,String pass,String newpass) {
		try {
		
		ConnectionProvider ob=new ConnectionProvider();
		Connection con=ob.getCon();
			
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, newpass);
		st.setString(2,uname);
		st.setString(3,pass);
		int rs=st.executeUpdate();
		con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}
	
	
}
