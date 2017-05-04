<%@page import="java.sql.SQLException"%>
<%@page import="sdm.hsmp.jdbc.DriverConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
<%
        String myname =  (String)session.getAttribute("uname");
        String type =  (String)session.getAttribute("utype");
        if(myname == null || type == null || !type.equalsIgnoreCase("member"))
            {
             response.sendRedirect("kill.jsp");
            }
%>
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
					<li><a href="memhome.jsp" class="selected">Home</a></li>
					<li><a href="viewbill.jsp">View Bill</a></li>
					<li><a href="mchngpass.jsp">change Password</a></li>
					<li><a href="kill.jsp">Logout</a></li>
				</ul>
				<br style="clear: left" />
			</div>
			<!-- end of templatemo_menu -->

		</div>
		<!-- end of header -->
</div>
<center>

<p style="font-family: cursive;color: maroon;font-size: 20px;font-weight: bolder;">Members of your flat</p><br>
<table border="4px;">
<thead>
<tr>
<th ><p style="width: 150px"align="center">Name</p></th>
<th ><p style="width: 150px"align="center">FlatNo</p></th>
<th ><p style="width: 150px"align="center">Photo</p></th>
<th ><p style="width: 150px"align="center">Operation</p></th>
</tr>
</thead>

<%

try {
	ResultSet rs = null;
	//rs = DriverConnection.selectOperation("select * from ")
	String flat = request.getParameter("fl");
	String query = "select * from tblflatmembers where flatno = '"+myname+"'";
	rs = DriverConnection.selectOperation(query);

	while (rs.next()) {
 %>

<tbody>
<tr>
<td style="width: 150px;height: 150px;"align="center"><%out.print(rs.getString("mname")); %></td>
<td style="width: 150px;height: 150px;"align="center"><%out.print(rs.getString("flatno")); %></td>
<td style="width: 150px;height: 150px;"align="center"><img src="<%="memphotos/"+rs.getString("photo") %>" style="max-height: 150px;max-width: 120px;"></td>
<td style="width: 150px;height: 150px;"align="center"><a href="viewdetail.jsp?id=<%=rs.getInt("id") %>"><img alt="" src="images/edit.png"></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a href="#">Details</a></td>
</tr>
</tbody>

<%

	}
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

%>

</table>
<br><br><br>
</center>



	
		<div id="templatemo_footer_wrapper">
		<div id="templatemo_footer">
			Copyright © 2016 <a href="#">Housing Management System</a>
			<div class="cleaner"></div>
		</div>
	</div>

</body>
</html>