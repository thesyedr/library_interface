package com.poc.test.abms.beans;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="BOOK")
public class Book {
	
	private int book_id;
	private String book_title;
	private String book_author;
	private String book_edition;
	private String book_publisher;
	private double book_price;
	private String book_category;
	private String book_isbn;
	
	@Id
	@GeneratedValue
	@Column(name = "book_id", unique = true, nullable = false)
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	@Column(name = "book_title", nullable = false)
	public String getBook_title() {
		return book_title;
	}
	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}
	@Column(name = "book_author",  nullable = false)
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	@Column(name = "book_edition",length = 20)
	public String getBook_edition() {
		return book_edition;
	}
	public void setBook_edition(String book_edition) {
		this.book_edition = book_edition;
	}
	@Column(name = "book_publisher",nullable = false)
	public String getBook_publisher() {
		return book_publisher;
	}
	public void setBook_publisher(String book_publisher) {
		this.book_publisher = book_publisher;
	}
	
	@Column(name = "book_price")
	public double getBook_price() {
		return book_price;
	}
	public void setBook_price(double book_price) {
		this.book_price = book_price;
	}
	@Column(name = "book_category")
	public String getBook_category() {
		return book_category;
	}
	public void setBook_category(String book_category) {
		this.book_category = book_category;
	}
	@Column(name = "book_isbn")
	public String getBook_isbn() {
		return book_isbn;
	}
	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}
	
	
	
	
	

}
