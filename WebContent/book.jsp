<%@ page contentType="text/html; charset=GBK"%>     
  
<%   
//获取下载文件   
 //String download = (String) request.getSession().getAttribute("Download");   
//清空文件   
 //request.getSession().removeAttribute("Download");   
%>   
  
<html>   
<a href="<%=request.getContextPath()%>/export" name="生成Excel">生成Excel</a> 
<br>
<input type="file" name="file" value="导入"><input type="button" name="button">  
</html> 