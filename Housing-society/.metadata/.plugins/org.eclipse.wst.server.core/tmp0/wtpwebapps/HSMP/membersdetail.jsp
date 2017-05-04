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

</head>
<body>

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
					<li><a href="#">Add Members</a></li>
					<li><a href="#">Owner Entry</a></li>
					<li><a href="#">Member Details</a></li>
					<li><a href="#">Change Password</a></li>
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
<center><div>
<br><br><br><br>
<p style="font-family: cursive;color: maroon;font-size: 20px;font-weight: bolder;">Charges applied</p>
<table>

<tr>
<td>Name:</td>
<td></td>
</tr><tr>
<td>DOB:</td>
<td></td>
</tr><tr>
<td>Sex:</td>
<td></td>

</tr><tr>
<td>Address:</td>
<td></td>
</tr>
<tr>
<td></td>
<td><input type="submit" name="csave" value="Save"/>&nbsp;&nbsp;&nbsp;<input type="submit" name="cedit" value="Edit"></td>

</tr>
</table>
<br><br><br><br><br><br>
</div></center>
	</div>
	
		<div id="templatemo_footer_wrapper">
		<div id="templatemo_footer">
			Copyright © 2016 <a href="#">Housing Management System</a>
			<div class="cleaner"></div>
		</div>
	</div>

</body>
</html>