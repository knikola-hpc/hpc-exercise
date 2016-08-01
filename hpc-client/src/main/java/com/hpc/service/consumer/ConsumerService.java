package com.hpc.service.consumer;

import com.hpc.service.exceptions.BusinessException;

public interface ConsumerService {

    /**
     * Process file by saving byte array representation of a file into a new file with specified fileName on the specified filePath.
     *
     * @param file     - byte array representation of file that needs to be uploaded
     * @param fileName - file name of the file that is being created
     * @return String filePath of newly created file
     * @throws BusinessException - throws exception with different error message type {@link BusinessException.ErrorType} depending on following:
     *                           - invalid input arguments {@link BusinessException.ErrorType#INVALID_FILE_ARGS}
     *                           - if file already exists {@link BusinessException.ErrorType#FILE_ALREADY_EXISTS}
     *                           - general / not predicted issue {@link BusinessException.ErrorType#GENERAL_ERROR}
     */
    String processFile(byte[] file, String fileName) throws BusinessException;
}
