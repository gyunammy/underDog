package com.edu.teamproject.exception;

public class ProductImgException extends RuntimeException{

	public ProductImgException(String msg) {
		super(msg);
	}
	
	public ProductImgException(String msg, Throwable e) {
		super(msg, e);
	}
}
