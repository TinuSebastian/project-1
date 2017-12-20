package com.niit.WearStyleBackend.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.WearStyleBackend.dao.CategoryDao;
import com.niit.WearStyleBackend.models.Category;

@Repository("categoryDao")
@EnableTransactionManagement
public class CategoryDaoImpl implements CategoryDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	
	public CategoryDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	
	public CategoryDaoImpl() {
		super();
	}


	@Transactional
	public boolean addCategory(Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(category);
			return true;
		}
		catch (Exception e)
		{
			return false;
		}
		
	}

	public List<Category> retrieveCategory()
	{
		 Session session=sessionFactory.openSession();
	        Query query=session.createQuery("from Category");
	        List<Category> listCategory=query.list();
	        session.close();
	        return listCategory;
	}
	
	@Transactional
	public boolean deleteCategory(Category category) 
	{
		 try
	        {
	        sessionFactory.getCurrentSession().delete(category);
	        return true;
	        }
	        catch(Exception e)
	        {
	        System.out.println("Exception Arised:"+e);  
	        return false;
	        }
	}

	public Category getCategory(int catId) 
	{
		 	Session session=sessionFactory.openSession();
	        Category category=(Category)session.get(Category.class,catId);
	        session.close();
	        return category;
	}
	@Transactional
	public boolean updateCategory(Category category) 
	{
		 try
	        {
	        sessionFactory.getCurrentSession().saveOrUpdate(category);
	        return true;
	        }
	        catch(Exception e)
	        {
	        System.out.println("Exception Arised:"+e);
	        return false;
	        }
	}

}
