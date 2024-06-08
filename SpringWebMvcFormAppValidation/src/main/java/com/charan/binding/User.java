package com.charan.binding;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class User {
	@NotEmpty
	private String uname;
	@NotEmpty
	private String pwd;
	@NotEmpty
	@Email
	private String email;
	@NotEmpty
	private String phone;
	@NotNull
	@Min(value=20)
	@Max(value=50)
	private Integer age;
}
