package com.musicAnalyser.beans;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;


public class songInfo {
	String simSongList;
	String simSongsPic;
	
	public static void main(String a[]) throws IOException{
		String sg="Top";
		songInfo sgInfo = new songInfo();
		System.out.println(sgInfo.getsimSongPics(sg));
		
	}
	
	public String getsimSongPics(String name){
	
		File f = new File(
				"C:/Users/MoniRakesh/Desktop/ITU_Study/CapstoneProject/mssweProjmaster/musicAnalyser/src/main/webapp/resources/media/SimilarSongs/"
						+ name + "/SimilarsongsPics.txt");
		Scanner read = null;
		String list = null;
		try {
			read = new Scanner(f);

			read.useDelimiter(",");
			String str = null;
			ArrayList s = new ArrayList();
			ArrayList ary = new ArrayList();
			int count = 0;
			String same = null;
			int distinct = 0;
			int found = 0;
			int a = 0;

			while (read.hasNext()) {
				s.add(read.next());
			}
			list = String.join(",", s);
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			// e.printStackTrace();
		}

		return list;
	}
}
