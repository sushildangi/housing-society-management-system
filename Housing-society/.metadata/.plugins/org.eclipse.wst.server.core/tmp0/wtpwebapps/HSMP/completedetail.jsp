<%@page import="java.sql.SQLException"%>
<%@page import="sdm.hsmp.jdbc.DriverConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	String myname = (String) session.getAttribute("uname");
	String type = (String) session.getAttribute("utype");
	if (myname == null || type == null || !type.equalsIgnoreCase("admin")) {
		response.sendRedirect("kill.jsp");
	}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Housing Society Management System</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="scripts/swfobject/swfobject.js"></script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="scripts/jquery.min.js"></script>
<script type="text/javascript" src="scripts/ddsmoothmenu.js">
	
</script>

<script type="text/javascript">
	ddsmoothmenu.init({
		mainmenuid : "templatemo_menu", //menu DIV id
		orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
		classname : 'ddsmoothmenu', //class added to menu's outer DIV
		//customtheme: ["#1c5a80", "#18374a"],
		contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
	})
</script>

</head>
<body>
	<form action="updtemem" method="post">
		<div id="templatemo_wrapper">

			<div id="templatemo_header">

				<div id="site_title">
					<h1>
						<a href="dashboard.jsp" target="_parent"></a>
					</h1>
				</div>

				<div id="templatemo_menu" class="ddsmoothmenu">
					<ul>
						<li><a href="dashboard.jsp" class="selected">Home</a></li>
						<li><a href="#">Member</a>
							<ul>
								<li><a href="pmembersentry.jsp">Add Members</a></li>
								<li><a href="pownerentry.jsp">Owner Entry</a></li>
								<li><a href="plistmembers.jsp">Member Details</a></li>
								<li><a href="changepassword.jsp">Change Password</a></li>
							</ul></li>
						<li><a href="#">bill</a>
							<ul>
								<li><a href="billpayment.jsp">Generate Bill</a></li>
							<li><a href="generatebill.jsp">Bill Payment</a></li>
							<li><a href="billhistory.jsp">Bill History</a></li>
							<li><a href="showcharges.jsp">Charge</a></li>
							</ul></li>
						<li><a href="#">Feedback</a></li>
						<li><a href="kill.jsp">Logout</a></li>
					</ul>
					<br style="clear: left" />
				</div>
				<!-- end of templatemo_menu -->

			</div>
			<!-- end of header -->
			<%
			
			try {
				ResultSet rs = null;
				String id = request.getParameter("id");
				//out.print(flat);
				 String query = "select * from tblflatmembers where id = " + id;
				rs = DriverConnection.selectOperation(query);

				if (rs.next()) {
					
				
				
			
			
			%>
			<div>
				<br>
				<center>
					<h3 style="font-family: cursive; color: maroon;">Members
						Detail</h3>
				</center>
				<center>
					<table>
						<tr>
							<td>ID :</td>
							<td><input type="text" name="mid" value="<%=rs.getString("id") %>" size="50px;"
								readonly="readonly" /></td>
						</tr>
						<tr>
							<td>Flat No:</td>
							<td><input type="text" name="flatno" value="<%=rs.getString("flatno") %>" size="50px;"
								readonly="readonly" /></td>
						</tr>
						<tr>
							<td>Name:</td>
							<td><input type="text" name="name" value="<%=rs.getString("mname") %>" size="50px;" /></td>
						</tr>

						<tr>
							<td>Address:</td>
							<td><textarea name="address" style="width: 360px;" ><%out.print(rs.getString("address")); %></textarea></td>
						</tr>
						<tr>
							<td>Pin:</td>
							<td><input type="text" name="pin" value="<%=rs.getString("pin") %>" size="50px;" /></td>
						</tr>
						<tr>
							<td>Gender:</td>
							<td><input type="text" name="gender" value="<%=rs.getString("sex") %>" size="50px;" />
						</tr>
						<tr>
							<td>Date Of Birth:</td>
							<td><input type="text" name="dob" value="<%=rs.getString("dob") %>" size="50px;" /></td>
						</tr>
						
						<tr>
							<td>Mobile:</td>
							<td><input type="text" maxlength="10" name="mobile" value="<%=rs.getString("mobile") %>" size="50px;" /></td>
						</tr>
						<tr>
							<td>Email:</td>
							<td><input type="email" name="email" value="<%=rs.getString("email") %>" size="50px;" /></td>
						</tr>
						<tr>
							<td>Qualification:</td>
							<td><input type="text" name="qualification" value="<%=rs.getString("QUALIFICATION") %>"
								size="50px;" /></td>
						</tr>
						<tr>
							<td>Photo:</td>
							<td><img src="<%="memphotos/"+rs.getString("photo") %>" height="150px;" width="100px;" /></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="submit" value="Update"style="width: 100px; height: 40px" /></td>
						</tr>
					</table>
				</center>


			</div>
			
			<%
				}
			 } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			%>

		</div>

		<div id="templatemo_footer_wrapper">
			<div id="templatemo_footer">
				Copyright © 2016 <a href="#">Housing Management System</a>
				<div class="cleaner"></div>
			</div>
		</div>
	</form>
</body>
</html>