package com.hpc.service.consumer;

import com.hpc.service.exceptions.BusinessException;
import com.hpc.ws.api.*;
import com.hpc.ws.api.exceptions.FileServiceFileExistsException;
import com.hpc.ws.api.exceptions.FileServiceValidationException;
import org.apache.cxf.common.util.StringUtils;
import org.apache.log4j.Logger;

import javax.annotation.Resource;
import java.io.File;
import java.util.UUID;

/**
 * Consumer service responsible for saving a file by calling a {@link IFileService} API.
 * <p>
 * Will be responsible for taking care of additional business rules (e.g. not allowing overwriting an already existing file).
 */
public class ConsumerServiceImpl implements ConsumerService {

    private final Logger logger = Logger.getLogger(ConsumerServiceImpl.class);

    @Resource
    private IFileService client;

    private String defaultPath;

    private String processFile(byte[] file, String filePath, String fileName) throws BusinessException {

        try {
            /**
             * Perform input arguments validation
             */
            if (file == null || file.length == 0) {
                throw new BusinessException(BusinessException.ErrorType.INVALID_FILE_ARGS);
            }
            if (StringUtils.isEmpty(fileName)) {
                throw new BusinessException(BusinessException.ErrorType.INVALID_FILE_ARGS);
            }
            if (StringUtils.isEmpty(filePath)) {
                throw new BusinessException(BusinessException.ErrorType.INVALID_FILE_ARGS);
            }
            if (!new File(filePath).isDirectory()) {
                throw new BusinessException(BusinessException.ErrorType.INVALID_FILE_ARGS);
            }

            /**
             * Check if file with the same name already exists.
             * In such case, do not allow overwriting the file!
             * Instead, try creating a new random folder in specified path.
             */
            File toBeCreated = new File(filePath + File.separator + fileName);
            if (toBeCreated.exists()) {
                filePath = generateRandomFilePath();
                boolean status = new File(filePath).mkdir();
                if (!status) {
                    /**
                     * Any reason for not creating a folder (security issue of already exists, etc.),
                     * will throw general business exception.
                     */
                    logger.error("Random Folder '" + filePath + "' could not be created!");
                    throw new BusinessException(BusinessException.ErrorType.GENERAL_ERROR);
                }
            }

            String createdFilePath = client.saveFile(file, filePath, fileName);
            logger.info("New file in path: '" + createdFilePath + "' has been created!");

            return createdFilePath;

        } catch (FileServiceValidationException e) {
            throw new BusinessException(BusinessException.ErrorType.INVALID_FILE_ARGS);
        } catch (FileServiceFileExistsException e) {
            throw new BusinessException(BusinessException.ErrorType.FILE_ALREADY_EXISTS);
        } catch (BusinessException e) {
            throw e;
        } catch (Exception e) {
            throw new BusinessException(BusinessException.ErrorType.GENERAL_ERROR);
        }
    }

    public String processFile(byte[] file, String fileName) throws BusinessException {
        return processFile(file, defaultPath, fileName);
    }

    private String generateRandomFilePath() {
        return defaultPath + File.separator + UUID.randomUUID().toString().substring(0, 6);
    }

    public void setDefaultPath(String defaultPath) {
        this.defaultPath = defaultPath;
    }
}