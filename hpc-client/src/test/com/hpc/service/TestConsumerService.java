package com.hpc.service;

import com.hpc.service.consumer.ConsumerService;
import com.hpc.service.exceptions.BusinessException;
import org.apache.commons.io.IOUtils;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.IOException;
import java.io.InputStream;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
@PropertySource("classpath:application.properties")
public class TestConsumerService {

    @Autowired
    private ConsumerService consumerService;

    @Value("${default.path}")
    private String folderPath;

    @Value("${web.service.endpoint}")
    private String endPoint;

    @Test
    public void testInvalidFileName() throws IOException {
        try {
            consumerService.processFile(loadDefaultFile(), "");
            Assert.assertTrue(false);

        } catch (BusinessException e) {
            Assert.assertTrue(e.getErrorType() == BusinessException.ErrorType.INVALID_FILE_ARGS);
        }
    }

    @Test
    public void testInvalidFile() throws IOException {
        try {
            consumerService.processFile(null, "some.file.name.txt");
            Assert.assertTrue(false);

        } catch (BusinessException e) {
            Assert.assertTrue(e.getErrorType() == BusinessException.ErrorType.INVALID_FILE_ARGS);
        }
    }

    private byte[] loadDefaultFile() throws IOException {
        InputStream resourceAsStream = this.getClass().getResourceAsStream("/sample.txt");
        Assert.assertNotNull(resourceAsStream);
        return IOUtils.toByteArray(resourceAsStream);
    }
}
