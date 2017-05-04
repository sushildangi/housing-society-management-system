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
					<a href="index.jsp" target="_parent"></a>
				</h1>
			</div>

			<div id="templatemo_menu" class="ddsmoothmenu">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="about.jsp" class="selected">About</a></li>
					<li><a href="login.jsp">Login</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
				<br style="clear: left" />
			</div>
			<!-- end of templatemo_menu -->

		</div>
		<!-- end of header -->

	</div>
	<br>
	<br>
	<div align="center">
	
	<center><h2>Out Team Members</h2></center>
		<table width="60%" border="1">
			<tr>
				<td height="50" width="400" >
				<div style="padding: 20px;" align="center">
				<img alt="Sushil Dangi" height="160px" width="150px" src="profile/sushil.jpeg"/><br><br>
				<b>Name : Sushil Dangi</b><br>
				<b>Roll No. : 14223077</b>
				</div>
				</td>
				<td height="50" width="400" >
				<div style="padding: 20px" align="center">
				<img alt="Animikh Daripa" height="160px" width="150px" src="profile/animikh.jpeg"/><br><br>
				<b>Name : Animikh Daripa</b><br>
				<b>Roll No. : 14223014</b>
				</div>
				</td>
			</tr>
			<tr>
				<td height="50" width="400" >
				<div style="padding: 20px" align="center">
				<img alt="Avinash Singh" height="160px" width="150px" src="profile/avinash.jpeg"/><br><br>
				<b>Name : Avinash Singh </b><br>
				<b>Roll No. : 14223025</b>
				</div>
				</td><td height="50" width="400" >
				<div style="padding: 20px" align="center">
				<img alt="Jaya Gupta" height="160px" width="150px" src="profile/java.jpeg"/><br><br>
				<b>Name : Jaya Gupta</b><br>
				<b>Roll No. : 14223040</b>
				</div>
				</td>
			</tr>
			
		</table>
	</div>

	<div id="templatemo_footer_wrapper">
		<div id="templatemo_footer">
			Copyright © 2016 <a href="#">Housing Management System</a>
			<div class="cleaner"></div>
		</div>
	</div>

</body>
</html>