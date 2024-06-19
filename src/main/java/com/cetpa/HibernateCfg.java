package com.cetpa;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

public class HibernateCfg 
{
	private static SessionFactory factory;
	public static SessionFactory getSessionFactory()
	{
		if(factory==null)
		{
			Properties setting=new Properties();
			setting.put(Environment.HBM2DDL_AUTO, "update");
			setting.put(Environment.SHOW_SQL, "true");
			setting.put(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");
			setting.put(Environment.URL, "jdbc:mysql://localhost/hibernate10?createDatabaseIfNotExist=true");
			setting.put(Environment.USER, "root");
			setting.put(Environment.PASS, "mysql");
			setting.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
			Configuration cn=new Configuration();
			cn.setProperties(setting);
			cn.addAnnotatedClass(Customer.class);
			factory = cn.buildSessionFactory();
		}
		return factory;
	}
}
