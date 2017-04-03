package com.musicAnalyser.beans;

import java.io.*;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Scanner;
import java.io.PrintWriter;


import java.util.Collection;


public class analyseRepeatChords {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		Scanner read = new Scanner(new File("C:/Users/MoniRakesh/Desktop/ITU_Study/CapstoneProject/"
											+ "mssweProjmaster/musicAnalyser/src/main/webapp/resources/chords/Track1.txt"));
		read.useDelimiter(",");
		String str=null;
        ArrayList song = new ArrayList();
        ArrayList str3Song = new ArrayList();
      	ArrayList maxChords= new ArrayList();
      	ArrayList ary= new ArrayList();
		int found = 0;
		int a = 0;
		int counter=2;
		HashMap map = new HashMap<String, Integer>();
		
		while(read.hasNext()){
			song.add(read.next());
		 }
		
		 for (int k = 0; k < song.size()-counter; k+=1) {
				
				for (int m = k; m < counter+k; m++) {
					// System.out.println(s.charAt(i)+""+s.charAt(i+=1));
					str3Song.add(song.get(m));
				}
			for (int j = 0; j < song.size()-counter; j+=1) {
				
				for (int i = j; i < counter+j; i++) {
					   ary.add(song.get(i));
					   
					
				}
				if(ary.equals(str3Song)){
								found++;
				}
				
				String ssSong3 = "";
				for (int i = 0; i < str3Song.size(); i++) {
					ssSong3 = ssSong3 + str3Song.get(i);
				}
				
				map.put(ssSong3, found);				
				maxChords.add(found);
				ary.clear();

			}

			str3Song.clear();
			found=0;

	}
			//map.forEach((k,v)->System.out.println("Patterns : " + k + "    Repeated : " + v));

		 Collection  c = map.values();
			int maxChord = (int)Collections.max(c);
			PrintWriter outputfile = new PrintWriter("C:/Users/MoniRakesh/Desktop/ITU_Study/CapstoneProject/mssweProjmaster"
					+ "/musicAnalyser/src/main/webapp/resources/chords/Track1RepPat.html");
			
			for (Object o : map.keySet()) {
			      if (map.get(o).equals(maxChord)) {
			        System.out.println(" Max Repeated Patterns =  " + o + " for " + maxChord );
			    	  
						//replace your System.out.print("your output");
						outputfile.print("Max Repeated Pattern : " + o + "    Count : " + maxChord+"\n");
						//outputfile.close(); 
			      }
			}
		//System.out.println(Collections.max(maxChords));
			//replace your System.out.print("your output");
			map.forEach((k,v)->outputfile.append("Pattern " + k + " Repeated : " + v+"\n"));
			outputfile.close(); 
		
	}

	private static String valueOf(Object str3Sg) {
		// TODO Auto-generated method stub
		return null;
	}
}
