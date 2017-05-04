<%@page import="java.sql.ResultSet"%>
<%@page import="sdm.hsmp.jdbc.DriverConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	String myname = (String) session.getAttribute("uname");
	String type = (String) session.getAttribute("utype");
	if (myname == null || type == null || !type.equalsIgnoreCase("member")) {
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

	<div id="templatemo_wrapper">

		<div id="templatemo_header">

			<div id="site_title">
				<h1>
					<a href="#" target="_parent"></a>
				</h1>
			</div>

			<div id="templatemo_menu" class="ddsmoothmenu">
				<ul>
					<<li><a href="memhome.jsp" class="selected">Home</a></li>
					<li><a href="viewbill.jsp">View Bill</a></li>
					<li><a href="mchngpass.jsp">change Password</a></li>
					<li><a href="kill.jsp">Logout</a></li>
				</ul>
				<br style="clear: left" />
			</div>
			<!-- end of templatemo_menu -->

		</div>
		<!-- end of header -->
		<%
			int id = Integer.parseInt(request.getParameter("id"));
			ResultSet rs = DriverConnection.selectOperation("select * from TBLFLATMEMBERS where id =" + id);
			if (rs.next()) {
		%>
		<br>
		<br>
		<h3 align="center">Complete Details</h3>
		<center>
			<table border="1" width="60%">
				<tr>
					<td width="50%">Flat No</td>
					<td><%out.print(rs.getString("flatno")); %></td>
				</tr>
				<tr>
					<td>Photo</td>
					<td><img height="100px" width="90px" src="memphotos/<%=(rs.getString("photo")) %>" /></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><%out.print(rs.getString("mname")); %></td>
				</tr>
				<tr>
					<td>Sex</td>
					<td><%out.print(rs.getString("sex")); %></td>
				</tr>
				<tr>
					<td>DOB</td>
					<td><%out.print(rs.getString("dob")); %></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><%out.print(rs.getString("address")); %></td>
				</tr>
				<tr>
					<td>Pin</td>
					<td><%out.print(rs.getString("pin")); %></td>
				</tr>
				<tr>
					<td>mobile</td>
					<td><%out.print(rs.getString("mobile")); %></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><%out.print(rs.getString("email")); %></td>
				</tr>
				<tr>
					<td>Qualification</td>
					<td><%out.print(rs.getString("qualification")); %></td>
				</tr>
				<tr>
					<td>Id Number</td>
					<td><%out.print(rs.getString("inumber")); %></td>
				</tr>

			</table>
		</center>
		<%
			}
		%>
		<br>
		<br>
		<br>

	</div>

	<div id="templatemo_footer_wrapper">
		<div id="templatemo_footer">
			Copyright © 2016 <a href="#">Housing Management System</a>
			<div class="cleaner"></div>
		</div>
	</div>

</body>
</html>