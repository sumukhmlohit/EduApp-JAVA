package edu;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mysql.jdbc.PreparedStatement;

@MultipartConfig(maxFileSize = 169999999)
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			//
			String name = request.getParameter("name");
			Part filePart = request.getPart("photo");
			String subject=request.getParameter("subject");
			System.out.println("hello" + " " + name + " " + filePart);
			InputStream inputStream = null;

			if (filePart != null) {
				long fileSize = filePart.getSize();
				String fileContent = filePart.getContentType(); // filetype
				inputStream = filePart.getInputStream();
			}

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/custrep", "root", "ORACLEsumukh123");

	//		Employee (name , photo) VALUES (? , ?)
			int returCode=0;
			String query = "INSERT INTO notes VALUES (? , ?, ?)";
			String query1="INSERT INTO tnotes VALUES(?,?,?)";
			HttpSession session=request.getSession();
			PreparedStatement prepStmt=null;
			if(session.getAttribute("username")!=null) {
			 prepStmt = (PreparedStatement) con.prepareStatement(query);
			}
			else if(session.getAttribute("tusername")!=null)
			{
				prepStmt = (PreparedStatement) con.prepareStatement(query1);
			}
			
			
			if(prepStmt!=null) {
			prepStmt.setString(1, name);
			prepStmt.setBlob(2, inputStream);
			prepStmt.setString(3, subject);
			returCode = prepStmt.executeUpdate();
			}
			if (returCode == 0) {
				request.setAttribute("Message", "Error inserting file");
				getServletContext().getRequestDispatcher("/failure.jsp").forward(request, response);
			} else {
				request.setAttribute("Message", "Your record is inserted successfully");
				String sql="select * from notes where name=? ";
				PreparedStatement st=(PreparedStatement) con.prepareStatement(sql);
				st.setString(1,"reso");
				ResultSet rs=st.executeQuery();
				if(rs.next())
				{
					System.out.println(rs.getString("name"));
					System.out.println(rs.getString("file"));
				}
				
				System.out.println();
				getServletContext().getRequestDispatcher("/success.jsp").forward(request, response);
			}
		} catch (Exception exe) {
			exe.printStackTrace();
		}

	}

}
