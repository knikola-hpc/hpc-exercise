package com.hpc.service;

import com.hpc.service.consumer.ConsumerService;
import com.hpc.service.exceptions.BusinessException;
import com.hpc.ws.api.IFileService;
import com.hpc.ws.api.exceptions.FileServiceFileExistsException;
import com.hpc.ws.api.exceptions.FileServiceValidationException;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.junit.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
@PropertySource("classpath:application.properties")
public class TestWebServiceClientIT {

    @Autowired
    private ConsumerService consumerService;

    @Resource
    private IFileService client;

    @Value("${default.path}")
    private String folderPath;

    @Value("${web.service.endpoint}")
    private String endPoint;

    @Before
    public void before() {
        File folder = new File(folderPath);

        Assert.assertTrue(folder.exists());
        File[] files = folder.listFiles();
        if (files != null) {
            for (File file : files) {
                FileUtils.deleteQuietly(file);
            }
        }
    }

    @Test
    public void testInvalidFileName() throws IOException {
        try {
            byte[] file = loadDefaultFile();
            client.saveFile(file, folderPath, "");

            Assert.assertTrue(false);
        } catch (Exception e) {
            Assert.assertTrue(true);
            Assert.assertTrue(e instanceof FileServiceValidationException);
        }
    }

    @Test
    public void testInvalidFilePath() throws IOException {
        try {
            byte[] file = loadDefaultFile();
            client.saveFile(file, "not/existing/path", "sample.txt");

            Assert.assertTrue(false);
        } catch (Exception e) {
            Assert.assertTrue(true);
            Assert.assertTrue(e instanceof FileServiceValidationException);
        }
    }

    @Test
    public void testInvalidFileSize() throws IOException {
        try {
            client.saveFile(null, folderPath, "sample.txt");

            Assert.assertTrue(false);
        } catch (Exception e) {
            Assert.assertTrue(true);
            Assert.assertTrue(e instanceof FileServiceValidationException);
        }
    }

    @Test
    public void testFileAlreadyExists() throws IOException {
        try {
            // upload sample file first
            testSimpleUpload();

            client.saveFile(loadDefaultFile(), folderPath, "sample.txt");

            Assert.assertTrue(false);
        } catch (Exception e) {
            Assert.assertTrue(true);
            Assert.assertTrue(e instanceof FileServiceFileExistsException);
        }
    }

    @Test
    public void testSimpleUpload() throws IOException {
        try {
            byte[] file = loadDefaultFile();
            String filePath = consumerService.processFile(file, "sample.txt");

            Assert.assertTrue(new File(folderPath + File.separator + "sample.txt").exists());
            Assert.assertEquals(filePath, folderPath + File.separator + "sample.txt");

        } catch (BusinessException e) {
            Assert.assertTrue(false);
        }
    }

    @Test
    public void testFileExistsUpload() throws IOException {
        try {
            // upload simple file
            testSimpleUpload();

            // start uploading the a file with the same name again
            byte[] file = loadDefaultFile();
            String secondFilePath = consumerService.processFile(file, "sample.txt");

            String newFolderPath = secondFilePath.replaceAll("sample.txt", "");

            Assert.assertTrue(new File(folderPath + File.separator + "sample.txt").exists());
            Assert.assertTrue(new File(folderPath + File.separator + "sample.txt").isFile());
            Assert.assertTrue(new File(newFolderPath).isDirectory());

        } catch (BusinessException e) {
            Assert.assertTrue(false);
        }
    }

    private byte[] loadDefaultFile() throws IOException {
        InputStream resourceAsStream = this.getClass().getResourceAsStream("/sample.txt");
        Assert.assertNotNull(resourceAsStream);
        return IOUtils.toByteArray(resourceAsStream);
    }
}