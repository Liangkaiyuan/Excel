<%@ page language="java" import="org.leno.dao.impl.*" pageEncoding="utf-8"%>
<%@ page import="org.leno.entity.*" %>
<%@ page import="java.util.*" %>
<html>
  <head>
  
    
    <title></title>
    
  </head>
  
  <body>
<form action="<%=request.getContextPath()%>/BookServlet" method="post">
    <table align="center">
    	<tr>
    		<td>编号</td>
    		<td>名称</td>
    		<td>价格</td>
    		<td>作者</td>
    		<td>编码</td>
    		<td>出版社</td>
    		<td>图片</td>
    	</tr>
    	<%
    		BookDaoImpl dao=new BookDaoImpl();
    	    	    		List<Booka> list=dao.list();
    	    	    		for(int i=0;i<list.size();i++)
    	    	    		{
    	    	    			Booka en=new Booka();
    	    	    			en=list.get(i);
    	%>
    	 <tr>
    	 	<td><%=en.getBookId() %></td>
    		<td><%=en.getBookName() %></td>
    		<td><%=en.getBookPrice() %></td>
    		<td><%=en.getBookAuthor() %></td>
    		<td><%=en.getBookISBN() %></td>
    		<td><%=en.getBookLoad() %></td>
    		<td><%=en.getBookImg() %></td>
    	 </tr>
    	 <%
    	 	}
    	  %>
    	  <tr>
    	  	<td><a href="<%=request.getContextPath()%>/export">生成Excel1123</a></td><br>
    	  	<input type="file" name="file" value="导入"><input type="submit" name="button" value="确定">  
    	  </tr>
    </table>
    </form>
  </body>
</html>
