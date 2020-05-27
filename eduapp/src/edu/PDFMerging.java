package edu;
import org.apache.pdfbox.multipdf.PDFMergerUtility; 
import org.apache.pdfbox.pdmodel.PDDocument;  

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File; 
import java.io.IOException;
/**
 * Servlet implementation class Login
 */
@WebServlet("/PDFMerging")
public class PDFMerging extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PDFMerging() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String f1=request.getParameter("fil1");	
		String f2=request.getParameter("fil2");	
		f1="C:/Users/murali/eclipse-workspace/eduapp/"+f1;
		f2="C:/Users/murali/eclipse-workspace/eduapp/"+f2;
		File file1 = new File(f1); 
	    PDDocument doc1 = PDDocument.load(file1); 

	    File file2 = new File(f2); 
	    PDDocument doc2 = PDDocument.load(file2); 

	    //Instantiating PDFMergerUtility class 
	    PDFMergerUtility PDFmerger = new PDFMergerUtility();       
	    f1=f1.replace(".pdf", "");
	    f1=f1.replace("C:/Users/murali/eclipse-workspace/eduapp/","");
	    f2=f2.replace("C:/Users/murali/eclipse-workspace/eduapp/","");
	    String f3=f1+f2;
	    System.out.println(f3);
	    //Setting the destination file 
	    PDFmerger.setDestinationFileName("C:/Users/murali/eclipse-workspace/eduapp/"+f3);

	    //adding the source files 
	    PDFmerger.addSource(file1); 
	    PDFmerger.addSource(file2); 

	    //Merging the two documents 
	    PDFmerger.mergeDocuments(); 
	    System.out.println("Documents merged"); 

	    //Closing the documents 
	    doc1.close(); 
	    doc2.close(); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
/*	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
*/
}



