<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<form action="log" method="post">
	<div id="templatemo_wrapper">

		<div id="templatemo_header">

			<div id="site_title">
				<h1>
					<a href="index.jsp" target="_parent"></a>
				</h1>
			</div>

			<div id="templatemo_menu" class="ddsmoothmenu">
				<ul>
					<li><a href="index.jsp" >Home</a></li>
					<li><a href="about.jsp">About</a></li>
					<li><a href="login.jsp" class="selected">Login</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
				<br style="clear: left" />
			</div>
			<!-- end of templatemo_menu -->

		</div>
		<!-- end of header -->

	</div>

	<table width="100%" height="451" border="0" align="center"
		cellpadding="0" cellspacing="0">
		<tr>
			<td height="451" align="center" valign="middle" bgcolor="#d2d6de"><table
					width="424" height="331" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td height="89" align="center" valign="middle"><img
							src="images/logo.png" width="233" height="60" /></td>
					</tr>
					<tr>
						<td height="237" align="center" valign="middle"><table
								width="356" height="205" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td height="190" align="left" valign="middle" bgcolor="#FFFFFF"
										style="border: 1px solid #46433e;"><table width="322"
											border="0" align="center" cellpadding="6" cellspacing="0">
											<tr>
												<td colspan="2" align="center" valign="top">Sign in to
													start your session</td>
											</tr>
											<tr>
												<td width="273" align="left" valign="top"><input
													name="usrname" type="text" placeholder="User Name" size="40" /></td>
												<td width="25" align="left" valign="top"><img
													src="images/mail.png" width="14" height="13" /></td>
											</tr>
											<tr>
												<td align="left" valign="top"><input name="passwd"
													type="password" placeholder="Password" size="40" /></td>
												<td align="left" valign="top"><img src="images/log.png"
													width="14" height="15" /></td>
											</tr>
											<tr>
												<td colspan="2" align="right" valign="top"><button style="background-image: url('images/signin.png'); height: 35px; width: 89px;" ></button><br><br><font style="color: red;font-weight: bold;">${emsg}</font></td>
											</tr>
										</table></td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
	</table>

	<div id="templatemo_footer_wrapper">
		<div id="templatemo_footer">
			Copyright © 2016 <a href="#">Housing Management System</a>
			<div class="cleaner"></div>
		</div>
	</div>
</form>
</body>
</html>