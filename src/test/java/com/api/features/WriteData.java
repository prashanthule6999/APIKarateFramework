package com.api.features;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

public class WriteData {

	public static void writeData(String str) throws FileNotFoundException, UnsupportedEncodingException {
		PrintWriter writer = new PrintWriter("data.txt", "UTF-8");
//		writer.println("This is First Line");
//		writer.println("This is Second Line");
//		writer.println("This is Third Line");
//		writer.println("This is Fourth Line");
		writer.println(str);
		writer.close();
	}
}