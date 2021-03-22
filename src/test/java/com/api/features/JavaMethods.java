package com.api.features;

public class JavaMethods {

	public void methodWithoutArgument() {
		System.out.println("This non-static method is without argument");
	}

	public String methodWithArgument(String str) {
		System.out.println("This non-static method is with argument");
		return "Hello " + str;
	}

	public static void methodWoutArgument() {
		System.out.println("This static method is without argument");
	}

	public static String methodWArgument(String str) {
		System.out.println("This static method is with argument");
		return "Hello " + str;
	}
}