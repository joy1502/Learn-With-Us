import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.sql.*;

/**
 *
 * @author shata
 */
@MultipartConfig
public class UploadServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //fetch form data
            Part part = request.getPart("postFile");
            String fileName = part.getSubmittedFileName();
            
            //out.println(fileName);
            String path= getServletContext().getRealPath("/"+"posts"+File.separator+fileName);
            
            InputStream is= part.getInputStream();
            boolean s=uploadFile(is, path);
            
            if(s){
                out.println("uploaded"+path);
            }else{
                out.print("error");
            }
            try {
		Class.forName("com.mysql.jdbc.Driver");
	}catch(Exception a){
		out.print(a);
	}
	try{
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lwu","root","subhi10");
		  out.println("Connection Established is success");
                    String title=request.getParameter("title");
                    String content=request.getParameter("content");
                    String category=request.getParameter("category");
		    String query = "insert into post_information (p_title,p_content,p_catagory,p_file,file_name) values ('" +title+ "','" +content+ "','" +category+ "','" +path+ "','" +fileName+ "');";
		   Statement sta = con.createStatement();
                   int x = sta.executeUpdate(query);
                   if(x==0){
                       response.sendError(x, "Already Exist");
                   }
                   else{
                       response.sendRedirect("teacherDashboard.jsp");
                   }
                        
	}catch(Exception e){
		out.print("Error"+e);
		
	}
            
        }
    }

    public boolean uploadFile(InputStream is,String path){
        boolean test=false;
        try {
            byte[] byt =new byte[is.available()];
            is.read();
            FileOutputStream fos= new FileOutputStream(path);
            fos.write(byt);
            fos.flush();
            
            test=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return test;
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
