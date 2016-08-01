package com.hpc.client.form;

import org.apache.struts.action.*;
import org.apache.struts.upload.FormFile;

import javax.servlet.http.HttpServletRequest;

public class SimpleUploadForm extends ActionForm {

    /**
     * List of file to upload
     */
    private FormFile[] formFiles = new FormFile[5];

    /**
     * Validate user input after form is populated from request.
     *
     * @param mapping contains all of the deployment information for this
     *                Action bean.
     * @param request reference to the current HTTP request object.
     * @return On error a collection of errors is returned.
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {

        ActionMessages messages = new ActionMessages();

        // check if file is not zero length
        if (this.getUploads() == null || this.getUploads().length == 0) {
            messages.add("file", new ActionMessage("document_upload.error.file_cannot_be_empty"));
        }
        // first file is marked as mandatory and needs to be provided
        else if (this.getUploads()[0] == null || this.getUploads()[0].getFileSize() == 0) {
            messages.add("file", new ActionMessage("document_upload.error.file_cannot_be_empty"));
        }

        for (FormFile file : formFiles) {
            if (file.getFileSize() > 1024 * 1024) {
                messages.add("file", new ActionMessage("document_upload.error.file_size_exceed_allowed_max_size"));
                break;
            }
        }

        ActionErrors errors = new ActionErrors();
        errors.add(messages);

        return errors;
    }

    /**
     * Get file to upload
     *
     * @return
     */
    public FormFile[] getUploads() {
        return this.formFiles;
    }

    public FormFile[] getFormFiles() {
        return formFiles;
    }

    public void setFormFiles(FormFile[] formFiles) {
        this.formFiles = formFiles;
    }

    /**
     * Set file to upload
     *
     * @param iIndex   - index of upload formFile
     * @param formFile - form file
     */
    public void setUploads(int iIndex, FormFile formFile) {
        this.formFiles[iIndex] = formFile;
    }

}