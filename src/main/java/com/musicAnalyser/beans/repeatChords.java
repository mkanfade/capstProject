package com.musicAnalyser.beans;

import java.io.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;


public class repeatChords {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		Scanner read = new Scanner(new File("C:/Users/MoniRakesh/Desktop/ITU_Study/CapstoneProject/"
											+ "mssweProjmaster/musicAnalyser/src/main/webapp/resources/chords/Track11.txt"));
		read.useDelimiter(",");
		String str=null;
        ArrayList song = new ArrayList();
        ArrayList str3Song = new ArrayList();
      	ArrayList ary= new ArrayList();
		int count = 0;
		String same = null;
		int distinct = 0;
		int found = 0;
		int a = 0;
		
		while(read.hasNext()){
			song.add(read.next());
		 }
		
//		/*   for (int k = 0; k < song.size()-3; k+=1) {
				
			//	for (int m = k; m < 3+k; m++) {
					// System.out.println(s.charAt(i)+""+s.charAt(i+=1));
				//	   ary.add(song.get(m));
					
			//	}
			/*for (int j = 0; j < song.size()-3; j+=1) {
				
				for (int i = j; i < 3+j; i++) {
					// System.out.println(s.charAt(i)+""+s.charAt(i+=1));
					   ary.add(song.get(i));
					
				}
				/*if(ary.equals(str3Song)){
				//System.out.println(str3Song+"..."+ary);
				found++;
				}*/
				//System.out.println(str3Song+"..."+ary+j);
				//str3Song = ary.clone();
				//ary.clear();
				
			
			
			//System.out.println(str3Song+"..."+k);
			//str3Song.clear();
		
		
		
		for (int i = 0; i < song.size() - 2; i++) {
			// System.out.println(s.charAt(i)+""+s.charAt(i+=1));
			String s1 = song.get(a) + "" + song.get(a+= 1);

			System.out.println(s1);

			for (int j = i; j <song.size() - 2; j+=1) {
				String s2 = song.get(j) + "" + song.get(j+=1);

				if (s1.equals(s2)) {
					found++;
				}
				j-=1;
			}
			System.out.println(s1 + "--" + found);
			ary.add(found +"..."+s1);
			//String d=String.valueOf(s1).trim();
			//s=s.replaceAll(d,"");
			found = 0;

		}
		System.out.println(Collections.max(ary));
		//System.out.println("");
	}
}
