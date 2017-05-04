<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Contact Page</title>
<meta name="keywords" content="Chrome, Contact, Web Design, CSS, HTML, free template" />
<meta name="description" content="Contact Chrome Web - free HTML CSS template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

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
    
    	<div id="site_title"><h1><a href="index.jsp" target="_parent"></a></h1></div>
        
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
              	<li><a href="index.jsp">Home</a></li>
          		<li><a href="about.jsp">About</a></li>
          		<li><a href="login.jsp">login</a></li>
              	<li><a href="contact.jsp" class="selected">Contact</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
        
    </div> <!-- end of header -->
    
    <div id="templatemo_main">
    	<h2>Contact Us</h2>
        <div class="col_w630 float_l">
        	
             <div id="contact_form">
        
                <h4>Feel free to send us a message.</h4>
                
                <form method="post" name="contact" action="sendmail">
                    <input type="hidden" name="post" value="Send" />
                    <label for="author">Name:<font color="red">${emsg}</font></label> <input type="text" id="author" required = "required" name="author" class="input_field" />
                    <div class="cleaner h10"></div>
                    
                    <label for="email">Email:</label> <input type="email" id="email" required = "required" name="email" class="validate-email input_field" />
                    <div class="cleaner h10"></div>
                    
                    <label for="text">Message:</label> <textarea id="text" required = "required" name="text" rows="0" cols="0"></textarea>
                    <div class="cleaner h10"></div>
                    
                    <input type="submit" class="submit_btn float_l" name="submit" id="submit" value="Send" />
                    <input type="reset" class="submit_btn float_r" name="reset" id="reset" value="Reset" />
                
                </form>
        
            </div> 
        </div>
        
        <div class="col_w300 float_r">
            <div class="col_fw">	
            <h4>Mailing Address</h4>
                <h6> housing.society16@gmail.com</h6>
                National Institute of Technology Raipur <br />
                GE Road Raipur<br />
                Chhattisgarh<br />
                Tel: +91-7000253034<br />
            <br />            
            <div class="col_fw_last">
                <h4>Our Location</h4>
                <div id="map"><a class="pirobox" href="images/map_big.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit."><img src="images/map_thumb.jpg" alt="Image" /></a></div>                
            </div>
        </div>
	    <div class="cleaner"></div>
    </div> <!-- end of main -->
</div>

<div id="templatemo_footer_wrapper">
		<div id="templatemo_footer">
			Copyright © 2016 <a href="#">Housing Management System</a>
			<div class="cleaner"></div>
		</div>
	</div></div>
</body>
</html>