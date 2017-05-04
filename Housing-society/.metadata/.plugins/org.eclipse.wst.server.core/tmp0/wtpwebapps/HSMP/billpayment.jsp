<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="sdm.hsmp.jdbc.DriverConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
        String myname =  (String)session.getAttribute("uname");
        String type =  (String)session.getAttribute("utype");
        if(myname == null || type == null || !type.equalsIgnoreCase("admin"))
            {
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
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

</head>
<body>
<form action="inschrg" method="post">
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
					</ul>
					
					</li>
					<li>
					<a href="#">bill</a>
					<ul>
					<li><a href="billpayment.jsp">Generate Bill</a></li>
							<li><a href="generatebill.jsp">Bill Payment</a></li>
							<li><a href="billhistory.jsp">Bill History</a></li>
							<li><a href="showcharges.jsp">Charge</a></li>
					</ul>
					
					</li>
					<li><a href="#">Feedback</a></li>
					<li><a href="kill.jsp">Logout</a></li>
				</ul>
				<br style="clear: left" />
			</div>
			<!-- end of templatemo_menu -->

		</div>
		<!-- end of header -->
			<center>
				<div>
					<br>
					<br>
					<br>
					<br>
					<p
						style="font-family: cursive; color: maroon; font-size: 20px; font-weight: bolder;">Total
						Bill</p>
					<br>
					<font color="red">${msg }</font>
					<table>
						<%
							Connection con = (Connection) DriverConnection.get_connection();
							PreparedStatement pst = (PreparedStatement) con
									.prepareStatement("select * from TBLBILLCHARGE where id = ? ");
							pst.setInt(1, 1);
							ResultSet rs = pst.executeQuery();
							if (rs.next()) {
						%>
						<tr>
							<td>Maintanance cost:</td>
							<td><input type="number" align="right" readonly="readonly"
								name="mcharge" placeholder="MaintananceCost" required
								size="20px" value="<%=rs.getInt(1)%>" /></td>
						</tr>
						<tr>
							<td>Parking Charge:</td>
							<td><input type="number" align="right" readonly="readonly"
								name="pcharge" placeholder="Parking charge" required size="20px"
								value="<%=rs.getInt(2)%>" /></td>
						</tr>
						<tr>
							<td>Water Charge:</td>
							<td><input type="number" align="right" readonly="readonly"
								name="wcharge" placeholder="Water charge" required size="20px"
								value="<%=rs.getInt(3)%>" /></td>

						</tr>
						<tr>
							<td>Event Charge:</td>
							<td><input type="number" align="right" readonly="readonly"
								name="echarge" placeholder="Event charge" required size="20px"
								value="<%=rs.getInt(4) %>" /></td>
						</tr>

						<tr>
							<td colspan="2" align="center"><hr>Total=<%out.print(rs.getInt(1)+rs.getInt(2)+rs.getInt(3)+rs.getInt(4)); %>
						</tr>
					</table>


					<% }%>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
				</div>
			</center>
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