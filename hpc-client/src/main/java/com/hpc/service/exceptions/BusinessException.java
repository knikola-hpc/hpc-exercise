package com.hpc.service.exceptions;

public class BusinessException extends Exception {

    private ErrorType errorType;

    public BusinessException(ErrorType errorType) {
        super();
        this.errorType = errorType;
    }

    public BusinessException(ErrorType errorType, String message) {
        super(message);
        this.errorType = errorType;
    }

    public BusinessException(ErrorType errorType, Exception e) {
        super(e);
        this.errorType = errorType;
    }

    public ErrorType getErrorType() {
        return errorType;
    }

    public enum ErrorType {

        INVALID_FILE_ARGS,
        FILE_ALREADY_EXISTS,
        GENERAL_ERROR;
    }
}
