package com.poc.library.ebms.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poc.library.ebms.dao.BookManagementDao;
import com.poc.test.abms.beans.Book;
import com.poc.library.ebms.service.BookManagementService;

@Service
public class BookManagementServiceImpl implements BookManagementService{
	
	@Autowired
	private BookManagementDao daoService;
	public BookManagementDao getDaoService() {
		return daoService;
	}

	public void setDaoService(BookManagementDao daoService) {
		this.daoService = daoService;
	}

	public boolean insertBookDetails(Book book) {
		System.out.println(":: insert service  ::");
		return daoService.insert(book);
	}

	public boolean updateBookDetails(Book book) {
		
		return daoService.update(book);
	}

	public boolean deleteBookDetails(String isbnId) {
		
		return daoService.deleteBookDetails(isbnId);
	}

	public List<Book> getBookByIsbnNumber(String isbnId) {
		
		List<Book> book = daoService.getBookByIsbnNumber(isbnId);
		return book;
	}

	public List<Book> getBooks() {
		List<Book> books = daoService.getBooks();
		return books;
	}

	
	

}
