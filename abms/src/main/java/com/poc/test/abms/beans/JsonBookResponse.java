package com.poc.test.abms.beans;


import java.util.List;
public class JsonBookResponse {
	
	private int result;
	private String message;
	private List<Book> books = null;
	
	
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public List<Book> getBooks() {
		return books;
	}
	public void setBooks(List<Book> books) {
		this.books = books;
	}
	
	

}
