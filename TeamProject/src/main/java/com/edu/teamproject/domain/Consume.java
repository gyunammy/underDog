package com.edu.teamproject.domain;

import lombok.Data;

@Data
public class Consume {
	private int consume_idx;
	private String writer;
	private String date;
	private int price;
	private String content;
}
