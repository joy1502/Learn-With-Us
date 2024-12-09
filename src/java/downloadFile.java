
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shata
 */
@WebServlet(urlPatterns = {"/downloadFile"})
public class downloadFile extends HttpServlet {
    
    static ResultSet result;
    static Connection con;
    //static PreparedStatement stat;
    static Statement st;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String category=request.getParameter("books");
            String filePath="";
            String fileName="";
            String completeFile="";
            String sql="select * from post_information where p_catagory='BOOKS';";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lwu","root","root");
          st=con.createStatement();
          result=st.executeQuery(sql);
          while (result.next()) 
            {

                fileName = result.getString("file_name");
                filePath=result.getString("p_file");

            }
      completeFile=filePath+File.separator+fileName;
        File downloadFile = new File(completeFile);
         int length   = 0;

        ServletContext context = getServletContext();
        // gets MIME type of the file
        String mimeType = context.getMimeType(completeFile);
        if (mimeType == null) {        
            // set to binary type if MIME mapping not found
            mimeType = "application/octet-stream";
        }
        System.out.println("MIME type: " + mimeType);

        // modifies response
        response.setContentType(mimeType);
        response.setContentLength((int) downloadFile.length());

        // forces download
        String headerKey = "Content-Disposition";
        String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
        response.setHeader(headerKey, headerValue);
        OutputStream outStream = response.getOutputStream();
         DataInputStream in = new DataInputStream(new FileInputStream(downloadFile));
        byte[] buffer = new byte[4096];
        //int bytesRead = -1;

      while ((in != null) && ((length = in.read(buffer)) != -1))
        {
            outStream.write(buffer,0,length);
        }
        in.close();
        outStream.close(); 


        }
         catch (Exception ex)
        {
            System.out.println(ex.getMessage());

        }
           
        }
    
    }

