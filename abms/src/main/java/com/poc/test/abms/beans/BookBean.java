package com.poc.test.abms.beans;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "book")
public class BookBean {
	
	private String title;
	private String author;
	private double price;
	
	
	public String getTitle() {
		return title;
	}
	
	@XmlElement
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	
	@XmlElement
	public void setAuthor(String author) {
		this.author = author;
	}
	
	public double getPrice() {
		return price;
	}
	@XmlElement
	public void setPrice(double price) {
		this.price = price;
	}
	
	

}
