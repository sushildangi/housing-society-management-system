/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2016-12-06 06:09:49 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class membersentry_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");

        String myname =  (String)session.getAttribute("uname");
        String type =  (String)session.getAttribute("utype");
        if(myname == null || type == null || !type.equalsIgnoreCase("admin"))
            {
             response.sendRedirect("kill.jsp");
            }

      out.write("\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Housing Society Management System</title>\n");
      out.write("<link href=\"templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"scripts/swfobject/swfobject.js\"></script>\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/ddsmoothmenu.css\" />\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" src=\"scripts/jquery.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"scripts/ddsmoothmenu.js\">\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("ddsmoothmenu.init({\n");
      out.write("\tmainmenuid: \"templatemo_menu\", //menu DIV id\n");
      out.write("\torientation: 'h', //Horizontal or vertical menu: Set to \"h\" or \"v\"\n");
      out.write("\tclassname: 'ddsmoothmenu', //class added to menu's outer DIV\n");
      out.write("\t//customtheme: [\"#1c5a80\", \"#18374a\"],\n");
      out.write("\tcontentsource: \"markup\" //\"markup\" or [\"container_id\", \"path_to_menu_file\"]\n");
      out.write("})\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<form action=\"svinfomem\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("\t<div id=\"templatemo_wrapper\">\n");
      out.write("\n");
      out.write("\t\t<div id=\"templatemo_header\">\n");
      out.write("\n");
      out.write("\t\t\t<div id=\"site_title\">\n");
      out.write("\t\t\t\t<h1>\n");
      out.write("\t\t\t\t\t<a href=\"dashboard.jsp\" target=\"_parent\"></a>\n");
      out.write("\t\t\t\t</h1>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t<div id=\"templatemo_menu\" class=\"ddsmoothmenu\">\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li><a href=\"dashboard.jsp\" >Home</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"#\"  class=\"selected\">Member</a>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li><a href=\"pmembersentry.jsp\">Add Members</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"pownerentry.jsp\">Owner Entry</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"plistmembers.jsp\">Member Details</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"changepassword.jsp\">Change Password</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"#\">bill</a>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li><a href=\"billpayment.jsp\">Generate Bill</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"generatebill.jsp\">Bill Payment</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"billhistory.jsp\">Bill History</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"showcharges.jsp\">Charge</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">Feedback</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"kill.jsp\">Logout</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t\t<br style=\"clear: left\" />\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!-- end of templatemo_menu -->\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- end of header -->\n");
      out.write("<center><div>\n");
      out.write("<br><br><br><br>\n");
      out.write("<p style=\"font-family: cursive;color: maroon;font-size: 35px;font-weight: bolder;\">Members entry</p>\n");
      out.write("<table>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Enter Flat No:</td>\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"flatno\" placeholder=\"FlatNo:\"\n");
      out.write("\t\t\t\t\t\t\t\tsize=\"50px\" readonly=\"readonly\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${fno }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" required/></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Enter name:</td>\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"mname\"\n");
      out.write("\t\t\t\t\t\t\t\ttitle=\"Atleast 3 Character and Must not Special Char\" required\n");
      out.write("\t\t\t\t\t\t\t\tpattern=\"[A-Za-z][A-Za-z ]{3,}\" placeholder=\"Name\" size=\"50px\" /></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Check your gender:</td>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"radio\" name=\"sex\" checked=\"checked\" value =\"Male\"/>Male\n");
      out.write("\t\t\t\t\t\t\t\t&nbsp; <input type=\"radio\" name=\"sex\" value =\"Female\" size=\"50px\" /> Female</td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Enter your date of birth:</td>\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"date\" name=\"dob\"\n");
      out.write("\t\t\t\t\t\t\t\ttitle=\"Please Enter dd/mm/yyyy format\" required\n");
      out.write("\t\t\t\t\t\t\t\tplaceholder=\"DOB\" size=\"50px\" pattern=\"\\d{1,2}/\\d{1,2}/\\d{4}\" /></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Enter your address:</td>\n");
      out.write("\t\t\t\t\t\t\t<td><textarea name=\"address\" required placeholder=\"Address\"\n");
      out.write("\t\t\t\t\t\t\t\t\tstyle=\"width: 363px;\"></textarea></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Enter your Pin Code:</td>\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"pin\" required maxlength=\"6\"\n");
      out.write("\t\t\t\t\t\t\t\tpattern=\"[0-9]{6}\" title=\"Must be 6 number\"\n");
      out.write("\t\t\t\t\t\t\t\tplaceholder=\"Pin code\" size=\"50px\" /></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Enter your Mobile No:</td>\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"mob\" pattern=\"[0-9].{0}|.{10,}\"\n");
      out.write("\t\t\t\t\t\t\t\ttitle=\"Must be 10 Number\" maxlength=\"10\"\n");
      out.write("\t\t\t\t\t\t\t\tplaceholder=\"Mobile Number\" size=\"50px\" /></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Enter your email:</td>\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"email\" name=\"email\" placeholder=\"Email\"\n");
      out.write("\t\t\t\t\t\t\t\tsize=\"50px\" /></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Enter your photo:</td>\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"file\" name=\"photo\" required\n");
      out.write("\t\t\t\t\t\t\t\tplaceholder=\"Photo\" size=\"50px\" /></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Educational Qualification:</td>\n");
      out.write("\t\t\t\t\t\t\t<td><select name=\"edu\" required>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"\">-- Select Education --</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"non matric\">non matric</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"Matric\">Matric</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"higher secondary\">higher secondary</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"Graduation\">Graduation</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"Post Graduation\">Post Graduation</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"Other\">Other</option>\n");
      out.write("\t\t\t\t\t\t\t</select></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Choose identity proof:</td>\n");
      out.write("\t\t\t\t\t\t\t<td><select name=\"idp\" required>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"\">Select ID</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"vid\">Voter ID card</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"pan\">Pan card</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"uid\">Aadhar card</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"dl\">Driving Licence</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"passport\">Passport</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"cid\">College</option>\n");
      out.write("\t\t\t\t\t\t\t</select></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Enter your ID number:</td>\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"idnum\" required\n");
      out.write("\t\t\t\t\t\t\t\tplaceholder=\"ID Number\" /></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td></td>\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"submit\" name=\"sowner\" value=\"save\"\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"width: 100px; height: 40px\" /> </td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t\t\t\t</table>\n");
      out.write("<br><br>\n");
      out.write("</div></center>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t\t<div id=\"templatemo_footer_wrapper\">\n");
      out.write("\t\t<div id=\"templatemo_footer\">\n");
      out.write("\t\t\tCopyright © 2016 <a href=\"#\">Housing Management System</a>\n");
      out.write("\t\t\t<div class=\"cleaner\"></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</form>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
