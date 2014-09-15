package com.poc.library.ebms.service;

import java.util.List;

import com.poc.test.abms.beans.Book;

public interface BookManagementService {
	
	public boolean insertBookDetails(Book book);
	public boolean updateBookDetails(Book book);
	public boolean deleteBookDetails(String isbnId);
	public List<Book> getBookByIsbnNumber(String isbnId);
	public List<Book> getBooks();

}
