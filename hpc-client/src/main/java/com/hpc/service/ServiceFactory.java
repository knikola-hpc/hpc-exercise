package com.hpc.service;

import com.hpc.service.consumer.ConsumerService;

/**
 * Service factory locator class. Class is abstract and created using singleton
 * pattern. User has to implement methods that returns services implementation.
 */
public abstract class ServiceFactory {

    /**
     * Singleton instance.
     */
    private static ServiceFactory instance = null;

    /**
     * Default constructor. It's private, so this class cannot be instantiated.
     */
    protected ServiceFactory() {
    }

    /**
     * Initialize factory with implementation class.
     */
    public static void init(Class clazz) throws Exception {
        instance = (ServiceFactory) clazz.newInstance();
    }

    /**
     * Get singleton instance.
     */
    public static synchronized ServiceFactory getInstance() throws IllegalStateException {
        if (instance == null) {
            throw new IllegalStateException("Singleton instance is not initialized. Call init method first!");
        }
        return instance;
    }

    /**
     * Getter for property 'consumerService'.
     *
     * @return Value for property 'consumerService'.
     */
    public abstract ConsumerService getConsumerService();
}
