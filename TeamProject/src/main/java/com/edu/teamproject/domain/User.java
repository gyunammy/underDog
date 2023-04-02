package com.edu.teamproject.domain;

import lombok.Data;

@Data
public class User {
	private int user_idx;
	private String id;
	private String email;
	private String name;
	private String sns;
	private String regdate;
	private int checking;
}
