package org.leno.dao.impl;

import java.util.ArrayList;
import java.util.List;


import org.leno.entity.Booka;
import org.leno.entity.DBConnection;

public class BookDaoImpl extends DBConnection  {
	List<Booka> list=null;
	private String sql="";
	Booka en=null;
	public List<Booka> list() {
		sql="select * from book";
		list=new ArrayList<Booka>();
		try{
			super.resultSet=super.createResultSet(sql);
				while(super.resultSet.next())
				{
					en=new Booka();
					en.setBookId(Integer.parseInt(super.resultSet.getString("bookId")));
					en.setBookName(super.resultSet.getString("bookName"));
					en.setBookAuthor(super.resultSet.getString("bookAuthor"));
					en.setBookImg(super.resultSet.getString("bookImg"));
					en.setBookISBN(super.resultSet.getString("bookISBN"));
					en.setBookLoad(super.resultSet.getString("bookLoad"));
					en.setBookPrice(super.resultSet.getString("bookPrice"));
					this.list.add(en);
				}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
}
