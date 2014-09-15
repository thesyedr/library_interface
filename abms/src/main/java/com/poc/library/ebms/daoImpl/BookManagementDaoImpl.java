package com.poc.library.ebms.daoImpl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.poc.library.ebms.dao.BookManagementDao;
import com.poc.test.abms.beans.Book;

@Repository
@Transactional
public class BookManagementDaoImpl implements BookManagementDao{
	
	@Autowired
	private SessionFactory sessionFactory; 	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public boolean insert(Book book) {
		sessionFactory.getCurrentSession().save(book);
		return true;
	}

	public boolean update(Book book) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("update Book set book_title=:book_title,book_author=:book_author,book_publisher=:book_publisher "
		+",book_edition=:book_edition,book_price=:book_price,book_category=:book_category"+" where book_isbn = :book_isbn");		
		
		query.setParameter("book_title",book.getBook_title());
		query.setParameter("book_author",book.getBook_author());
		query.setParameter("book_publisher",book.getBook_publisher());
		query.setParameter("book_edition",book.getBook_edition());
		query.setParameter("book_price",book.getBook_price());
		query.setParameter("book_category",book.getBook_category());
		query.setParameter("book_isbn",book.getBook_isbn());
		int result = query.executeUpdate();
		if(result > 0)
			return true;
		else
		 return false;
	}

	public boolean deleteBookDetails(String isbnId) {
		
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("delete Book where book_isbn = :isbnId");
		query.setParameter("isbnId", isbnId);
		int result = query.executeUpdate();		
		if(result > 0)
			return true;
		else
			return false;
	}

	public Book fetch(int book_id) {
		
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<Book> getBooks() {
		
		Session session = sessionFactory.getCurrentSession();		
		List<Book> list = session.createQuery("from Book").list();
		
		return list;
	}

	public List<Book> getBookByIsbnNumber(String isbnId) {
		
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Book b where b.book_isbn=:isbnId");
		query.setParameter("isbnId", isbnId);
		List<Book> book = query.list();
		return book;
	}

}
