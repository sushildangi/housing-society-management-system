<%@page import="sdm.hsmp.jdbc.DriverConnection"%>
<%@page import="java.sql.ResultSet"%>
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
<form action="Pb" method="post">
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
<div>
<br>
<center><p style="font-family: cursive;font-size: 20px;color: maroon;"> Bill History Details</p></center><br>
<br>
<center>
<table width="400px" border=1>
<tr><th>Sl.No</th><th>Year</th><th>Month</th><th>Status</th></tr>

<% 
  String flatno=request.getParameter("flatno");
int i=0;
   ResultSet rs=DriverConnection.selectOperation("select * from BILLPAYMENT where flatno='"+flatno+"'");
   while(rs.next()){

%>
<tr>
  <td><% out.println(++i);%></td>
  <td><%out.println(rs.getString("year"));%></td>
  <td><%out.println(rs.getString("month"));%></td>
  <td><%out.println("paid");%></td></tr>
  <%}
  if(i==0){
	  request.setAttribute("msg", "Flat no. doesn't exists");
   request.getRequestDispatcher("billhistory.jsp").forward(request,response);
   }
  %>

</table>
</center>
<center>
<a href="billhistory.jsp">Back</a>

</center>

</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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