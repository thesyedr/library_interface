package com.poc.library.ebms.dao;

import java.util.List;

import com.poc.test.abms.beans.Book;

//book management dao 
public interface BookManagementDao {
	
	public boolean insert(Book book);
	public boolean update(Book book);
	public boolean deleteBookDetails(String isbnId);
	public Book fetch(int book_id);
	public List<Book> getBooks();
	public List<Book> getBookByIsbnNumber(String isbnId);


}
