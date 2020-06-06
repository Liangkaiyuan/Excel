<%@ page contentType="text/html; charset=GBK"%>     
  
<%   
//获取下载文件   
 String download = (String) request.getSession().getAttribute("Download");   
//清空文件   
 request.getSession().removeAttribute("Download");   
%>   
  
<html>   
 下传文件 <a href="<%=download %>" name="下载">下载</a>   
</html>  
