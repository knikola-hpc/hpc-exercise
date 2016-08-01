package com.hpc.client.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hpc.service.consumer.ConsumerService;
import com.hpc.service.ServiceFactory;
import com.hpc.service.exceptions.BusinessException;
import org.apache.struts.Globals;
import org.apache.struts.action.*;

import com.hpc.client.form.SimpleUploadForm;
import org.apache.struts.upload.FormFile;

/**
 * Struts action controller responsible for handling file upload after successful validation,
 * performed by related form-bean {@link SimpleUploadForm#validate(ActionMapping, HttpServletRequest)}.
 */
public class SimpleUploadAction extends Action {

    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) throws Exception {

        // get consumer service for managing file processing
        ConsumerService consumerService = ServiceFactory.getInstance().getConsumerService();

        // init errors to be displayed to end user
        ActionMessages errors = new ActionMessages();

        SimpleUploadForm uploadForm = (SimpleUploadForm) form;
        FormFile[] formFiles = uploadForm.getUploads();
        for (FormFile formFile : formFiles) {

            if (formFile != null && formFile.getFileSize() > 0) {
                try {
                    consumerService.processFile(formFile.getFileData(), formFile.getFileName());
                    errors.add(Globals.ERROR_KEY, new ActionMessage("document_upload.error.file_successfully_uploaded", formFile.getFileName()));

                } catch (BusinessException e) {
                    if (e.getErrorType() == BusinessException.ErrorType.FILE_ALREADY_EXISTS) {
                        errors.add(Globals.ERROR_KEY, new ActionMessage("document_upload.error.file_already_exists", formFile.getFileName()));
                    } else if (e.getErrorType() == BusinessException.ErrorType.INVALID_FILE_ARGS) {
                        errors.add(Globals.ERROR_KEY, new ActionMessage("document_upload.error.specified_file_name_invalid"));
                    } else if (e.getErrorType() == BusinessException.ErrorType.GENERAL_ERROR) {
                        errors.add(Globals.ERROR_KEY, new ActionMessage("document_upload.error.general_error"));
                    }

                } catch (Exception e) {
                    errors.add(Globals.ERROR_KEY, new ActionMessage("document_upload.error.general_error"));
                }
            }
        }
        saveErrors(request, errors);

        return mapping.findForward("success");
    }
}