/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.32
 * Generated at: 2016-12-07 18:47:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contact_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>Contact Page</title>\r\n");
      out.write("<meta name=\"keywords\" content=\"Chrome, Contact, Web Design, CSS, HTML, free template\" />\r\n");
      out.write("<meta name=\"description\" content=\"Contact Chrome Web - free HTML CSS template from templatemo.com\" />\r\n");
      out.write("<link href=\"templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/ddsmoothmenu.css\" />\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"scripts/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"scripts/ddsmoothmenu.js\">\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("ddsmoothmenu.init({\r\n");
      out.write("\tmainmenuid: \"templatemo_menu\", //menu DIV id\r\n");
      out.write("\torientation: 'h', //Horizontal or vertical menu: Set to \"h\" or \"v\"\r\n");
      out.write("\tclassname: 'ddsmoothmenu', //class added to menu's outer DIV\r\n");
      out.write("\t//customtheme: [\"#1c5a80\", \"#18374a\"],\r\n");
      out.write("\tcontentsource: \"markup\" //\"markup\" or [\"container_id\", \"path_to_menu_file\"]\r\n");
      out.write("})\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"templatemo_wrapper\">\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"templatemo_header\">\r\n");
      out.write("    \r\n");
      out.write("    \t<div id=\"site_title\"><h1><a href=\"index.jsp\" target=\"_parent\"></a></h1></div>\r\n");
      out.write("        \r\n");
      out.write("        <div id=\"templatemo_menu\" class=\"ddsmoothmenu\">\r\n");
      out.write("            <ul>\r\n");
      out.write("              \t<li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("          \t\t<li><a href=\"about.jsp\">About</a></li>\r\n");
      out.write("          \t\t<li><a href=\"login.jsp\">login</a></li>\r\n");
      out.write("              \t<li><a href=\"contact.jsp\" class=\"selected\">Contact</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            <br style=\"clear: left\" />\r\n");
      out.write("        </div> <!-- end of templatemo_menu -->\r\n");
      out.write("        \r\n");
      out.write("    </div> <!-- end of header -->\r\n");
      out.write("    \r\n");
      out.write("    <div id=\"templatemo_main\">\r\n");
      out.write("    \t<h2>Contact Us</h2>\r\n");
      out.write("        <div class=\"col_w630 float_l\">\r\n");
      out.write("        \t\r\n");
      out.write("             <div id=\"contact_form\">\r\n");
      out.write("        \r\n");
      out.write("                <h4>Feel free to send us a message.</h4>\r\n");
      out.write("                \r\n");
      out.write("                <form method=\"post\" name=\"contact\" action=\"sendmail\">\r\n");
      out.write("                    <input type=\"hidden\" name=\"post\" value=\"Send\" />\r\n");
      out.write("                    <label for=\"author\">Name:<font color=\"red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${emsg}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</font></label> <input type=\"text\" id=\"author\" required = \"required\" name=\"author\" class=\"input_field\" />\r\n");
      out.write("                    <div class=\"cleaner h10\"></div>\r\n");
      out.write("                    \r\n");
      out.write("                    <label for=\"email\">Email:</label> <input type=\"email\" id=\"email\" required = \"required\" name=\"email\" class=\"validate-email input_field\" />\r\n");
      out.write("                    <div class=\"cleaner h10\"></div>\r\n");
      out.write("                    \r\n");
      out.write("                    <label for=\"text\">Message:</label> <textarea id=\"text\" required = \"required\" name=\"text\" rows=\"0\" cols=\"0\"></textarea>\r\n");
      out.write("                    <div class=\"cleaner h10\"></div>\r\n");
      out.write("                    \r\n");
      out.write("                    <input type=\"submit\" class=\"submit_btn float_l\" name=\"submit\" id=\"submit\" value=\"Send\" />\r\n");
      out.write("                    <input type=\"reset\" class=\"submit_btn float_r\" name=\"reset\" id=\"reset\" value=\"Reset\" />\r\n");
      out.write("                \r\n");
      out.write("                </form>\r\n");
      out.write("        \r\n");
      out.write("            </div> \r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"col_w300 float_r\">\r\n");
      out.write("            <div class=\"col_fw\">\t\r\n");
      out.write("            <h4>Mailing Address</h4>\r\n");
      out.write("                <h6> housing.society16@gmail.com</h6>\r\n");
      out.write("                National Institute of Technology Raipur <br />\r\n");
      out.write("                GE Road Raipur<br />\r\n");
      out.write("                Chhattisgarh<br />\r\n");
      out.write("                Tel: +91-7000253034<br />\r\n");
      out.write("            <br />            \r\n");
      out.write("            <div class=\"col_fw_last\">\r\n");
      out.write("                <h4>Our Location</h4>\r\n");
      out.write("                <div id=\"map\"><a class=\"pirobox\" href=\"images/map_big.jpg\" title=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"><img src=\"images/map_thumb.jpg\" alt=\"Image\" /></a></div>                \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\t    <div class=\"cleaner\"></div>\r\n");
      out.write("    </div> <!-- end of main -->\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"templatemo_footer_wrapper\">\r\n");
      out.write("\t\t<div id=\"templatemo_footer\">\r\n");
      out.write("\t\t\tCopyright Â© 2016 <a href=\"#\">Housing Management System</a>\r\n");
      out.write("\t\t\t<div class=\"cleaner\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div></div>\r\n");
      out.write("</body>\r\n");
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