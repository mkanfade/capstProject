package com.musicAnalyser.beans;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CompareChar {

	public static void main(String[] args) {

		String str = null;
		
		BufferedReader bufferedReader = null;
		BufferedWriter bw = null;
		StringBuffer stringBuffer = new StringBuffer();
		String line = null;
		try {
		
		bufferedReader = new BufferedReader(new FileReader("C:/Users/MoniRakesh/Desktop/ITU_Study/CapstoneProject/mssweProjmaster/musicAnalyser/src/main/webapp/resources/chords/New1.txt"));

		

		while ((line = bufferedReader.readLine()) != null) {

			stringBuffer.append(line).append(System.getProperty("line.separator"));
		}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		} finally { // always close the file
			if (bw != null)
				try {
					bw.close();
					bufferedReader.close();
				} catch (IOException ioe2) {
					// just ignore it
				}
		} // end try/catch/finally
		
		
		
		str = stringBuffer.toString();
	//	str = str.replace(",", "");
		System.out.println(str);
		String char2;
		List aStr = new ArrayList<String>();
		HashMap map = new HashMap<String, Integer>();
		
		/*for (int i = 0; i < str.length()-1; i++){
			char2 = str.substring(i, i+2);
			//System.out.println(char2);
			
			aStr.add(char2);
			map.put(char2, 1);
		}*/
		
		String ss [] = str.split(",");
		
		aStr = Arrays.asList(ss);
		
		ArrayList aCheckList = new ArrayList<>();
		
		for (int count =0; count < aStr.size()-1; count++){
			String s = (String) aStr.get(count);
			if(aCheckList.contains(s))
					continue;
			else {
				for (int j = count +1; j < aStr.size(); j++) {
					String st = (String)aStr.get(j);
				//	System.out.println(s + "==" + st);
					if (s.equals(st))
						if (map.containsKey(s)){
				//			System.out.println(s);
							int no = (int) map.get(s);
							no = no +1;
							map.put(s, no);
						}
						
				}
				
			}
			aCheckList.add(s);
		}
		
		map.forEach((k,v)->System.out.println("Key : " + k + " Value : " + v));
		
		Collection  c = map.values ();
		int maxChord = (int)Collections.max(c);
		
		for (Object o : map.keySet()) {
		      if (map.get(o).equals(maxChord)) {
		        System.out.println(" Max no. of chords =  " + maxChord + " for " + o );
		      }
		}
		
	}

}