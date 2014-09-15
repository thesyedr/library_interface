package com.poc.test.abms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;




import com.poc.test.abms.beans.Book;
import com.poc.test.abms.beans.BookBean;
import com.poc.test.abms.beans.JsonBookBean;
import com.poc.test.abms.beans.JsonResponse;

@Controller
@RequestMapping("/bms")
public class TestController {
	
	@RequestMapping(value="{bookName}", method = RequestMethod.GET)
	public String getFruit(@PathVariable String bookName, ModelMap model) {
 
		BookBean book = new BookBean();
		book.setAuthor("Syed Rahmath");
		book.setTitle("Spring3.0");
		book.setPrice(70.0);
		model.addAttribute("book", book);
		System.out.println("BookName : "+bookName);		
		return "list";
 
	}
	
	
	@RequestMapping(value="/id/{bookid}", method = RequestMethod.GET)
	public @ResponseBody JsonBookBean getBooks(@PathVariable Integer bookid, ModelMap model) { 
		System.out.println("==========Inside GetBooks==============");
		JsonBookBean book = new JsonBookBean();
		book.setAuthor("Syed Rahmath");
		book.setTitle("Spring3.0");
		book.setPrice(70.0);
		model.addAttribute("book", book);
		System.out.println("BookName : "+bookid);		
		return book;
 
	}
	
	
	@RequestMapping(value="/book.htm", method = RequestMethod.GET)
	public String  getBook(ModelMap model) {
 
		System.out.println("==========Inside GetBooks==============");
		JsonBookBean book = new JsonBookBean();
		book.setAuthor("Syed Rahmath");
		book.setTitle("Spring3.0");
		book.setPrice(70.0);
		model.addAttribute("book", book);		
		
		return "book"; 
	}
	
	
	@RequestMapping(value="/addBook.htm", method = RequestMethod.POST)
	public @ResponseBody JsonBookBean addBook(@RequestBody JsonBookBean mybook) {
 
		System.out.println("==========Inside GetBooks==============");
		System.out.println(mybook.getAuthor()+"  "+mybook.getPrice());
		JsonBookBean book = new JsonBookBean();
		book.setAuthor("Syed Rahmath");
		book.setTitle("Spring4.0");
		book.setPrice(90.0);		
		return book; 
	}
	
	@RequestMapping(value="/console.htm", method = RequestMethod.GET)
	public String  getConsole(ModelMap model) {
 
		System.out.println("==========Inside Console==============");
		/*JsonBookBean book = new JsonBookBean();
		book.setAuthor("Syed Rahmath");
		book.setTitle("Spring3.0");
		book.setPrice(70.0);
		model.addAttribute("book", book);		*/
		
		return "ManagementConsole"; 
	}
	
	@RequestMapping(value="/insertBook1.htm", method = RequestMethod.POST)
	public @ResponseBody JsonResponse  putConsole(@RequestBody Book book) {
 
		System.out.println("==========Inside post Console==============");
		/*JsonBookBean book = new JsonBookBean();
		book.setAuthor("Syed Rahmath");
		book.setTitle("Spring3.0");
		book.setPrice(70.0);
		model.addAttribute("book", book);	
			*/
		JsonResponse JsonResponse = new JsonResponse();
		JsonResponse.setMessage("success");
		JsonResponse.setResult(1);
		return JsonResponse; 
	}
	

}
