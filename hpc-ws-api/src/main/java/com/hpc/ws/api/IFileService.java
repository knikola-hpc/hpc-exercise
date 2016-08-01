package com.hpc.ws.api;

import com.hpc.ws.api.exceptions.FileServiceFileExistsException;
import com.hpc.ws.api.exceptions.FileServiceValidationException;

import javax.jws.WebParam;
import javax.jws.WebService;
import java.io.IOException;

@WebService
public interface IFileService {

    /**
     * Saves a byte array representation of file into the specified filePath with a fileName.
     *
     * @param file     - byte array representation of a file which will be saved
     * @param filePath - filePath in which the fale will be saved
     * @param fileName - name of the file to be saved
     * @return String file-path of newly created file
     * @throws IOException
     * @throws FileServiceValidationException - thrown if filePath or fileName are not provided or invalid (e.g. filePath doesn't exist)
     * @throws FileServiceFileExistsException      - thrown if file with the same name on the specified path already exists
     */
    String saveFile(@WebParam(name = "file") byte[] file, @WebParam(name = "filePath") String filePath, @WebParam(name = "fileName") String fileName)
            throws IOException, FileServiceValidationException, FileServiceFileExistsException;
}
