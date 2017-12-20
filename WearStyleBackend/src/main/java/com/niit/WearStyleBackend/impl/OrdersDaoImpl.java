package com.niit.WearStyleBackend.impl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.WearStyleBackend.dao.OrdersDao;
import com.niit.WearStyleBackend.models.Orders;
@Repository("OrderDao")
public class OrdersDaoImpl implements OrdersDao
{
	
	 @Autowired
	 SessionFactory sessionFactory;
	 
	 
	public OrdersDaoImpl() {
		super();
	}


	@Transactional
	public boolean addOrders(Orders order)
	{
		
		 try
	        {
	            sessionFactory.getCurrentSession().save(order);
	            return true;
	        }
	        catch(Exception e)
	        {
	            return false;
	        }
	}

}
