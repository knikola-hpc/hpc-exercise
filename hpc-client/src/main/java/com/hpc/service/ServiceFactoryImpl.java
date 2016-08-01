package com.hpc.service;

import com.hpc.service.consumer.ConsumerService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ServiceFactoryImpl extends ServiceFactory {

    private final Logger logger = Logger.getLogger(ServiceFactoryImpl.class);

    /**
     * Spring's bossiness context file name.
     */
    private static final String CONTEXT_FILE_NAME = "applicationContext.xml";

    /**
     * Spring's bean factory.
     */
    private BeanFactory beanFactory;

    /**
     * Default constructor.
     */
    public ServiceFactoryImpl() {

        try {
            if (logger.isDebugEnabled()) {
                logger.debug(" Spring BeanFactory initialization started. ");
            }
            beanFactory = new ClassPathXmlApplicationContext(CONTEXT_FILE_NAME);

            if (logger.isDebugEnabled()) {
                logger.debug(" Spring BeanFactory initialization finished. ");
            }
        } catch (Exception e) {
            logger.error("Exception thrown during Service factory initialization: ", e);
        }
    }

    @Override
    public ConsumerService getConsumerService() {
        return (ConsumerService) beanFactory.getBean("consumerService");
    }
}
