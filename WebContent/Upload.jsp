<%@ page contentType="text/html; charset=GBK" language="java"%>     
  
<html>   
 <html:form action="/Action.do?method=getUpload" method="POST" enctype="multipart/form-data">   
  <html:file property="uploadfile" size="80%" />   
  <input type="button" value="�� ��" onclick="upload(this.form)" class="buttonGray">   
 </html:form>   
</html>   
  
<script language="javascript">   
function upload(obj)   
{   
 if(confirm("������ѡ�����XXX,��ȷ��Ҫ������"))   
 {   
  var uploadfile = document.all.uploadfile.value;   
  if((null == uploadfile) ||( "" == uploadfile))   
  {   
   alert("�ϴ��ļ�û��ָ����");   
   return false;   
  }   
     obj.action = '<html:rewrite page="/Action.do?method=getUpload"/>';   
     obj.submit();   
 }   
}   
</script>  

<%@ page contentType="text/html; charset=GBK" language="java"%>

<html>
 <html:form action="/Action.do?method=getUpload" method="POST" enctype="multipart/form-data">
  <html:file property="uploadfile" size="80%" />
  <input type="button" value="�� ��" onclick="upload(this.form)" class="buttonGray">
 </html:form>
</html>

<script language="javascript">
function upload(obj)
{
 if(confirm("������ѡ�����XXX,��ȷ��Ҫ������"))
 {
  var uploadfile = document.all.uploadfile.value;
  if((null == uploadfile) ||( "" == uploadfile))
  {
   alert("�ϴ��ļ�û��ָ����");
   return false;
  }
     obj.action = '<html:rewrite page="/Action.do?method=getUpload"/>';
     obj.submit();
 }
}
</script> 
