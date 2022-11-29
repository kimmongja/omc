<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
 <%@ include file="/WEB-INF/include/include-header.jspf" %>  
<title>레이아웃</title>
</head>
<body>
<div class="container">
    <div class="row">
      <table class="table">
         <tr>
          <td>
            <tiles:insertAttribute name="header"/>
          </td>
         </tr>
         <tr>
           <td name="content">
             <tiles:insertAttribute name="content"/>
           </td>
         </tr>
         <tr> 
           <td name="footer">
             <tiles:insertAttribute name="footer"/>
           </td>
         </tr>
       </table>
    </div>
  </div>
</body>
</html>