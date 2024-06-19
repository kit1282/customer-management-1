package com.cetpa;

import java.util.List;

import org.hibernate.*;
import org.hibernate.query.Query;

public class CustomerRepository 
{
	private static Session session;
	private static Transaction transaction;
	static
	{
		SessionFactory factory=HibernateCfg.getSessionFactory();
		session=factory.openSession();
		transaction=session.getTransaction();
	}
	public static void saveRecord(Customer customer)
	{
		transaction.begin();
		session.save(customer);
		transaction.commit();
	}
	public static Customer getRecord(int cid)
	{
		Customer customer=session.get(Customer.class,cid);
		return customer;
	}
	public static List<Customer> getCustomerList()
	{
		Query<Customer> query=session.createQuery("from Customer",Customer.class);
		List<Customer> clist=query.list();
		return clist;
	}
}
