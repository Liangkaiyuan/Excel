package org.leno.export.servlet;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.leno.dao.impl.BookDaoImpl;
import org.leno.entity.Booka;
import org.leno.export.util.ExportExcel;


public class Export extends HttpServlet {
	static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			//File file = new File(getServletContext().getRealPath("WEB-INF/book.jpg"));

	      response.setContentType("octets/stream");

	      response.addHeader("Content-Disposition", "attachment;filename=lky.xls");

	      
	      //����Excel��ʽ����
	      ExportExcel<Booka> ex = new ExportExcel<Booka>();

	      String[] headers = { "ͼ����123", "ͼ������", "ͼ������", "ͼ��۸�", "ͼ��ISBN","ͼ�������", "����ͼƬ" };

	      List<Booka> dataset = new ArrayList<Booka>();

	      try {

	    	  BookDaoImpl dao=new BookDaoImpl();
//	    	  BookDaoImpl ��������
	    	  
	    	  
	    		List<Booka> list=dao.list();
	    		//BookEntity ʵ����
	    		System.out.println(list+"�����list");
	    		for(int i=0;i<list.size();i++)
	    		{
	    			Booka en=new Booka();
	    			en=list.get(i);
	    			System.out.println(en+"�����en");
		        // dataset.add(en.getBookId(), en.getBookName(), en.getBookAuthor(), en.getBookPrice(),en.getBookISBN(),en.getBookLoad(), en.getBookImg());
	    			dataset.add(en);
	    		}
	         OutputStream out = response.getOutputStream();

	         ex.exportExcel(headers, dataset, out);

	         out.close();

	         System.out.println("excel�����ɹ���");

	      } catch (FileNotFoundException e) {

	         // TODO Auto-generated catch block

	         e.printStackTrace();

	      } catch (IOException e) {

	         // TODO Auto-generated catch block

	         e.printStackTrace();

	      }


	}

}
