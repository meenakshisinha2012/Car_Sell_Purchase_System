package com.wu.hibernate.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateUtil {
	private static StandardServiceRegistry registry;
	private static SessionFactory sessionFactory;

	public static SessionFactory getSessionFactory() {
		if (sessionFactory == null) {
			try {
				// Create the ServiceRegistry from hibernate.cfg.xml
				registry = new StandardServiceRegistryBuilder().configure().build();

				// Create Metadata using the specified service registry
				Metadata metadata = new MetadataSources(registry).getMetadataBuilder().build();

				// Create SessionFactory
				sessionFactory = metadata.getSessionFactoryBuilder().build();

			} catch (Throwable e) {
				System.err.println("Initial SessionFactory creation failed." + e);
				throw new ExceptionInInitializerError(e);
			}
		}
		return sessionFactory;
	}

	public static void shutdown() {
		if (registry != null) {
			StandardServiceRegistryBuilder.destroy(registry);
		//or sessionFactory.close();  //Close caches and connection pools
		}
	}

	public Session getSession() {
		return sessionFactory.openSession();
	}
}
