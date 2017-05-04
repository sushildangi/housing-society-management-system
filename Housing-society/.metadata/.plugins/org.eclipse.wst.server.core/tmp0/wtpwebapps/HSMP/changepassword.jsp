<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
        String myname =  (String)session.getAttribute("uname");
        String type =  (String)session.getAttribute("utype");
        if(myname == null || type == null || !type.equalsIgnoreCase("admin"))
            {
             response.sendRedirect("kill.jsp");
            }
%>
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
	<form action="chng" method="post">
		<div id="templatemo_wrapper">

			<div id="templatemo_header">

				<div id="site_title">
					<h1>
						<a href="dashboard.jsp" target="_parent"></a>
					</h1>
				</div>

				<div id="templatemo_menu" class="ddsmoothmenu">
					<ul>
						<li><a href="dashboard.jsp">Home</a></li>
						<li><a href="#" class="selected">Member</a>
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

		</div>

		<table width="100%" height="451" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td height="451" align="center" valign="middle" bgcolor="#d2d6de"><table
						width="424" height="331" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="89" align="center" valign="middle"><img
								src="images/cp.jpeg" width="233" height="90" /></td>
						</tr>
						<tr>
							<td height="237" align="center" valign="middle"><table
									width="356" height="205" border="0" align="center"
									cellpadding="0" cellspacing="0">
									<tr>
										<td height="190" align="left" valign="middle"
											bgcolor="#FFFFFF" style="border: 1px solid #46433e;"><table
												width="322" border="0" align="center" cellpadding="6"
												cellspacing="0">
												<tr>
													<td colspan="2" align="center" valign="top">Change
														Your password
														<br>
														<font color="red">${msg}</font>
														</td>
												</tr>
												<tr>
													<td width="273" align="left" valign="top"><input
														name="pass" type="password" placeholder="Password"
														size="40" /></td>

												</tr>
												<tr>
													<td align="left" valign="top"><input type="password"
														placeholder=" New Password" title="Must Be upper , lower , special and number" size="40" required
														pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="pwd1"
														onchange="form.pwd2.pattern = this.value;"></td>

												</tr>
												<tr>
													<td align="left" valign="top"><input type="password"
														placeholder=" Conferm Password" size="40" required title="Must Be upper , lower , special and number Matching"
														pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="pwd2">
													</td>

												</tr>
												<tr>
													<td colspan="2" align="right" valign="top"><input
														type="submit" class="submit_btn" value="Change"
														style="width: 100px; height: 40px" /></td>
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