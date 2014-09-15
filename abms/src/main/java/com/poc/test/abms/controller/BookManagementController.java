package com.poc.test.abms.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;





import com.poc.library.ebms.service.BookManagementService;
import com.poc.test.abms.beans.Book;
import com.poc.test.abms.beans.JsonBookResponse;
import com.poc.test.abms.beans.JsonResponse;

@Controller
@RequestMapping(value="/book")
public class BookManagementController {	
	
	@Autowired
	private BookManagementService bookService;
	
	public BookManagementService getBookService() {
		return bookService;
	}

	public void setBookService(BookManagementService bookService) {
		this.bookService = bookService;
	}
	
	
	@RequestMapping(value="/insertBook.htm",method = RequestMethod.POST)
	public @ResponseBody JsonResponse insertBook(@RequestBody Book bookForm ) {
		
		System.out.println("============pushing books==========");	
		boolean status = bookService.insertBookDetails(bookForm);
		JsonResponse jsonResponse = new JsonResponse();		
		if(status){
			System.out.println("============inserted  books db ==========");	
			jsonResponse.setMessage("Book Inserted");
			jsonResponse.setResult(1);
		}
		else{
			System.out.println("============books not stored in Db==========");	
			jsonResponse.setMessage("Book Not Inserted");
			jsonResponse.setResult(0);
		}
		
		return jsonResponse;
	}
	
	
	@RequestMapping(value="/deleteBook/{isbnId}",method = RequestMethod.DELETE)
	public @ResponseBody JsonResponse deleteBook(@PathVariable String isbnId) {
		
		System.out.println("============deleteing books========== : "+isbnId);	
		boolean status = bookService.deleteBookDetails(isbnId);
		JsonResponse jsonResponse = new JsonResponse();		
		if(status){
			System.out.println("============book deleted ==========");	
			jsonResponse.setMessage("Book Deleted");
			jsonResponse.setResult(1);
		}
		else{
			System.out.println("============book not deleted==========");	
			jsonResponse.setMessage("Book Not Inserted");
			jsonResponse.setResult(0);
		}
		
		return jsonResponse;
	}
	
	@RequestMapping(value="/books.htm",method = RequestMethod.GET)
	public @ResponseBody JsonBookResponse getAllBooks() {
		
		System.out.println("============fetching all books========== : ");	
		List<Book> books = bookService.getBooks();
		JsonBookResponse jsonBookResponse = new JsonBookResponse();		
		if(books.size() > 0 ){
			System.out.println("============books fetched ==========");	
			jsonBookResponse.setMessage("Books Fetched from DB");
			jsonBookResponse.setResult(1);
			jsonBookResponse.setBooks(books);
		}
		else{
			System.out.println("============books not available ==========");	
			jsonBookResponse.setMessage("Books are not Available in DB");
			jsonBookResponse.setResult(0);
		}
		
		return jsonBookResponse;
	}
	
	@RequestMapping(value="/updateBook.htm",method = RequestMethod.PUT)
	public @ResponseBody JsonBookResponse updateBook(@RequestBody Book book) {
		
		System.out.println("============Updating books==========  ");	
		boolean status = bookService.updateBookDetails(book);
		JsonBookResponse jsonBookResponse = new JsonBookResponse();		
		if(status){
			System.out.println("============book updated ==========");	
			jsonBookResponse.setMessage("Book Updated");
			jsonBookResponse.setResult(1);			
		}
		else{
			System.out.println("============book not updated==========");	
			jsonBookResponse.setMessage("Book Not Updated");
			jsonBookResponse.setResult(0);
		}		
		return jsonBookResponse;
	}
	
	

}
