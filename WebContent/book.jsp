<%@ page contentType="text/html; charset=GBK"%>     
  
<%   
//��ȡ�����ļ�   
 //String download = (String) request.getSession().getAttribute("Download");   
//����ļ�   
 //request.getSession().removeAttribute("Download");   
%>   
  
<html>   
<a href="<%=request.getContextPath()%>/export" name="����Excel">����Excel</a> 
<br>
<input type="file" name="file" value="����"><input type="button" name="button">  
</html> 