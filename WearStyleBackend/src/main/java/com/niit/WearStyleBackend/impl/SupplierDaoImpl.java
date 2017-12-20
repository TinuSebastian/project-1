package com.niit.WearStyleBackend.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.WearStyleBackend.dao.SupplierDao;
import com.niit.WearStyleBackend.models.Supplier;
@Repository("supplierDao")
@EnableTransactionManagement
public class SupplierDaoImpl implements SupplierDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean addSupplier(Supplier supplier) 
	{
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(supplier);
			return true;
		}
		catch (Exception e)
		{
			return false;
		}
		
	}

	public List<Supplier> retrieveSupplier() 
	{
		 Session session=sessionFactory.openSession();
	        Query query=session.createQuery("from Supplier");
	        List<Supplier> listSupplier=query.list();
	        session.close();
	        return listSupplier;
	}
	
	public SupplierDaoImpl() {
		super();
	}

	@Transactional
	public boolean deleteSupplier(Supplier supplier) 
	{
		try
        {
        sessionFactory.getCurrentSession().delete(supplier);
        return true;
        }
        catch(Exception e)
        {
        System.out.println("Exception Arised:"+e);  
        return false;
        }
	}
	
	public Supplier getSupplier(int splrId)
	{
		Session session=sessionFactory.openSession();
		Supplier supplier=(Supplier)session.get(Supplier.class,splrId);
		session.close();
        return supplier;
	}

	@Transactional
	public boolean updateSupplier(Supplier supplier)
	{
		try
        {
        sessionFactory.getCurrentSession().saveOrUpdate(supplier);
        return true;
        }
        catch(Exception e)
        {
        System.out.println("Exception Arised:"+e);
        return false;
        }
	}

}
