/**
 * 
 */
package com.musicAnalyser.helper;

/**
 * @author Hareesha
 * Feb 24, 2017
 */
public class StringHelper {
	
	public static String trimCharacter(String input){
		
		int len = input.length();
		String output = input.substring(1,len-1);
		System.out.println(output);
		return output;
	}
	
}
