package com.hpc;

import com.hpc.service.ServiceFactory;
import com.hpc.service.ServiceFactoryImpl;
import org.apache.log4j.Logger;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Initialize service factory providing Spring services upon startup of Spring's context
 */
public class SpringContextListener implements ServletContextListener {

    private final Logger logger = Logger.getLogger(SpringContextListener.class);

    public void contextInitialized(ServletContextEvent servletContextEvent) {
        try {
            ServiceFactory.init(ServiceFactoryImpl.class);
        } catch (Exception e) {
            logger.error("Context Initialization failed: ", e);
        }
    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
