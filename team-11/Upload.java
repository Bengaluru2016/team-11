package villgro;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class Upload
 */
@WebServlet("/Upload")
@MultipartConfig(maxFileSize = 16177215)
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = "jdbc:mysql://villgrodb.cuvlpmbtfjjv.us-west-2.rds.amazonaws.com:3306/LearningVillgro";
	String user = "villgrolearning";
	String pass = "team112016";
    public Upload() {
        super();
        // TODO Auto-generated constructor stub
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp)
    	    throws ServletException, IOException {
    	    	 resp.setContentType("text/html");
    	        String contentType = request.getContentType();
    	        PrintWriter out = resp.getWriter();
    	        
    	       Part filePart = request.getPart("uploadfile");
    	        InputStream inputStream = null; 
    	        
    	        if (filePart != null) {
    	            // prints out some information for debugging
    	            System.out.println(filePart.getName());
    	            System.out.println(filePart.getSize());
    	            System.out.println(filePart.getContentType());
    	             
    	            // obtains input stream of the upload file
    	            inputStream = filePart.getInputStream();
    	            
    	           
    	        }
    	        Connection conn = null; // connection to the database
    	            	         
    	        try {
    	            // connects to the database
    	            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    	            conn = DriverManager.getConnection(url, user, pass);
    	 
    	            // constructs SQL statement
    	            String sql = "insert into pending_approval value(?,?,?)";
    	            PreparedStatement statement = conn.prepareStatement(sql);
    	            statement.setInt(1, 14782);
    	            statement.setString(2,"barsaiyash");
    	            if (inputStream != null) {
    	                // fetches input stream of the upload file for the blob column
    	                statement.setBlob(3, inputStream);
    	            }
    	 
    	            // sends the statement to the database server
    	            int row = statement.executeUpdate();
    	            out.print("<html><head><title>Successfull</title></head>");
    				out.print("<body bgcolor='#ccffcc'><h2 style='text-align:center'>Your file has been submited successfully</h1><br>");
    				
    				if (row > 0) {
    	                out.print("<h3 style='text-align:center'>Image uploaded and saved into database ...</h3>");
    	                out.print("<h3 style='text-align:center'><a href='http://localhost:9090/Villgro2016/view/index.jsp?relog=1&admin=barsaiyash'>Go back to dashboard</a></h3></body></html>");
    	            }
    	        } catch (SQLException ex) {
    	           
    	            ex.printStackTrace();
    	            out.println(ex.toString());
    	        } 
    	          
    	            if (conn != null) {
    	                // closes the database connection
    	                try {
    	                    conn.close();
    	                } catch (SQLException ex) {
    	                    ex.printStackTrace();
    	                }
    	            }
    	            
    	  
    	        
    	        
    	        
}
}
