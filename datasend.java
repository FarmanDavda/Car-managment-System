/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package main;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "tadasend", urlPatterns = {"/datasend"})
public class datasend extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet tadasend</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet tadasend at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Insert insert =new Insert();
        Showdata showdata=new Showdata();
        String ownername = request.getParameter("tx1");
        String carname =request.getParameter("tx2");
        String carno =request.getParameter("tx3");
        String price=request.getParameter("tx4");
        int pr=Integer.parseInt(price);
        try{
        String bl=insert.datainsert(ownername,carname,carno,pr);
        response.sendRedirect("index.jsp?error=1");
        
//       String row=udate.dataupdate(ownername,carname,carno,pr);
//        response.sendRedirect("index.jsp?error=1");
//        String temp=showdata.showdata();
//        response.sendRedirect("admin.jsp?temp");
        }
        catch(Exception e){
        System.out.println(e);
        }
//        String datasubmitted;
//        datasubmitted= "Data successfully Submitted!";
//        
//       response.getWriter().append("Hello sir my name is farman !");
//        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
