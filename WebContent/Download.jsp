<%@ page contentType="text/html; charset=GBK"%>     
  
<%   
//��ȡ�����ļ�   
 String download = (String) request.getSession().getAttribute("Download");   
//����ļ�   
 request.getSession().removeAttribute("Download");   
%>   
  
<html>   
 �´��ļ� <a href="<%=download %>" name="����">����</a>   
</html>  
