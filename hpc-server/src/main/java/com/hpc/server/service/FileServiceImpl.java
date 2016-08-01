package com.hpc.server.service;

import com.hpc.ws.api.exceptions.FileServiceFileExistsException;
import com.hpc.ws.api.exceptions.FileServiceValidationException;
import com.hpc.ws.api.IFileService;
import org.apache.cxf.common.util.StringUtils;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Endpoint service responsible for saving a file to the specified file-path with a specified file-name.
 * <p>
 * It will validate passed input parameters, and take care that already existing file will not be overwritten.
 * All other, e.g. business related rules, will be responsibility of service which is calling upon the exposed API of FileService.
 */
@WebService(endpointInterface = "com.hpc.ws.api.IFileService", serviceName = "FileService")
public class FileServiceImpl implements IFileService {

    @WebMethod
    public String saveFile(@WebParam(name = "file") byte[] file, @WebParam(name = "filePath") String filePath, @WebParam(name = "fileName") String fileName) throws IOException, FileServiceValidationException, FileServiceFileExistsException {
        /**
         * Check if passed file (byte array representation) is null or empty
         */
        if (file == null || file.length == 0) {
            throw new FileServiceValidationException("File byte array representation not provided!");
        }
        /**
         * Check if passed filePath is valid / existing
         */
        if (filePath == null) {
            throw new FileServiceValidationException("File path not provided!");
        }
        File folder = new File(filePath);
        if (!folder.isDirectory()) {
            throw new FileServiceValidationException("File path: '" + filePath + "' is invalid!");
        }

        /**
         * Check if passed fileName is valid / existing
         */
        if (StringUtils.isEmpty(fileName)) {
            throw new FileServiceValidationException("File name not provided!");
        }

        /**
         * In case file already exists in the filePath, do not allow overriding existing file.
         */
        String path = filePath + File.separator + fileName;
        File existingFile = new File(path);
        if (existingFile.exists()) {
            throw new FileServiceFileExistsException(fileName);
        }

        /**
         * Perform copying of byte[] into the file with specified filePath & name
         */
        try (FileOutputStream stream = new FileOutputStream(existingFile)) {
            stream.write(file);
        }

        return existingFile.getPath();
    }
}