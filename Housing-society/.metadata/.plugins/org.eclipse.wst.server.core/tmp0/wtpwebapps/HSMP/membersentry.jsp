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
<form action="svinfomem" method="post" enctype="multipart/form-data">
	<div id="templatemo_wrapper">

		<div id="templatemo_header">

			<div id="site_title">
				<h1>
					<a href="dashboard.jsp" target="_parent"></a>
				</h1>
			</div>

			<div id="templatemo_menu" class="ddsmoothmenu">
				<ul>
					<li><a href="dashboard.jsp" >Home</a></li>
					<li><a href="#"  class="selected">Member</a>
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
<center><div>
<br><br><br><br>
<p style="font-family: cursive;color: maroon;font-size: 35px;font-weight: bolder;">Members entry</p>
<table>
						<tr>
							<td>Enter Flat No:</td>
							<td><input type="text" name="flatno" placeholder="FlatNo:"
								size="50px" readonly="readonly" value="${fno }" required/></td>
						</tr>
						<tr>
							<td>Enter name:</td>
							<td><input type="text" name="mname"
								title="Atleast 3 Character and Must not Special Char" required
								pattern="[A-Za-z][A-Za-z ]{3,}" placeholder="Name" size="50px" /></td>
						</tr>
						<tr>
							<td>Check your gender:</td>

							<td><input type="radio" name="sex" checked="checked" value ="Male"/>Male
								&nbsp; <input type="radio" name="sex" value ="Female" size="50px" /> Female</td>
						</tr>
						<tr>
							<td>Enter your date of birth:</td>
							<td><input type="date" name="dob"
								title="Please Enter dd/mm/yyyy format" required
								placeholder="DOB" size="50px" pattern="\d{1,2}/\d{1,2}/\d{4}" /></td>
						</tr>
						<tr>
							<td>Enter your address:</td>
							<td><textarea name="address" required placeholder="Address"
									style="width: 363px;"></textarea></td>
						</tr>

						<tr>
							<td>Enter your Pin Code:</td>
							<td><input type="text" name="pin" required maxlength="6"
								pattern="[0-9]{6}" title="Must be 6 number"
								placeholder="Pin code" size="50px" /></td>
						</tr>

						<tr>
							<td>Enter your Mobile No:</td>
							<td><input type="text" name="mob" pattern="[0-9].{0}|.{10,}"
								title="Must be 10 Number" maxlength="10"
								placeholder="Mobile Number" size="50px" /></td>
						</tr>

						<tr>
							<td>Enter your email:</td>
							<td><input type="email" name="email" placeholder="Email"
								size="50px" /></td>
						</tr>
						<tr>
							<td>Enter your photo:</td>
							<td><input type="file" name="photo" required
								placeholder="Photo" size="50px" /></td>
						</tr>
						
						<tr>
							<td>Educational Qualification:</td>
							<td><select name="edu" required>
									<option value="">-- Select Education --</option>
									<option value="non matric">non matric</option>
									<option value="Matric">Matric</option>
									<option value="higher secondary">higher secondary</option>
									<option value="Graduation">Graduation</option>
									<option value="Post Graduation">Post Graduation</option>
									<option value="Other">Other</option>
							</select></td>
						</tr>

						<tr>
							<td>Choose identity proof:</td>
							<td><select name="idp" required>
									<option value="">Select ID</option>
									<option value="vid">Voter ID card</option>
									<option value="pan">Pan card</option>
									<option value="uid">Aadhar card</option>
									<option value="dl">Driving Licence</option>
									<option value="passport">Passport</option>
									<option value="cid">College</option>
							</select></td>
						</tr>
						
						
						
						<tr>
							<td>Enter your ID number:</td>
							<td><input type="text" name="idnum" required
								placeholder="ID Number" /></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" name="sowner" value="save"
								style="width: 100px; height: 40px" /> </td>
						</tr>

					</table>
<br><br>
</div></center>
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