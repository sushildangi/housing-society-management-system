package sdm.hsmp.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sdm.hsmp.jdbc.DriverConnection;

@WebServlet("/flch")
public class FlatCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ResultSet rs=null;
		String flat = request.getParameter("flatno");
		String query = "select * from tblflatmembers where flatno = '"+flat+"'";
		rs = DriverConnection.selectOperation(query);
		
		try {
			if(rs.next()){
				String msg = "The Flat is already alloted !!!";
				request.setAttribute("err", msg);
				RequestDispatcher rd = request.getRequestDispatcher("pownerentry.jsp");
				rd.forward(request, response);
				
			}
			else{
				request.setAttribute("fno", flat);
				request.getRequestDispatcher("ownerentry.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
