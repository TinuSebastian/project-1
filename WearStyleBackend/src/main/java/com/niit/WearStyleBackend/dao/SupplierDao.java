package com.niit.WearStyleBackend.dao;

import java.util.List;

import com.niit.WearStyleBackend.models.Supplier;


public interface SupplierDao 
{
	public boolean addSupplier(Supplier supplier );
	public List<Supplier > retrieveSupplier();
	public boolean deleteSupplier(Supplier supplier );
	public Supplier  getSupplier(int splrId);
	public boolean updateSupplier(Supplier supplier );

}
