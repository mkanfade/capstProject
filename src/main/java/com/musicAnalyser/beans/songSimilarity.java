package com.musicAnalyser.beans;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class songSimilarity {

	/**
	 * @param args
	 * @throws FileNotFoundException
	 */
	/**
	 * @param args
	 * @throws FileNotFoundException
	 */
	public static void main(String[] args) throws FileNotFoundException {
		// TODO Auto-generated method stub
		ArrayList song1 = new ArrayList();
		ArrayList song9 = new ArrayList();
		ArrayList str4Song1 = new ArrayList();
		ArrayList str4Song9 = new ArrayList();
		;
		ArrayList ary = new ArrayList();
		ArrayList maxChords = new ArrayList();
		int found = 0;
		int counter = 4;
		Scanner readSong1 = new Scanner(new File("C:/Users/MoniRakesh/Desktop/ITU_Study/CapstoneProject/mssweProjmaster"
				+ "/musicAnalyser/src/main/webapp/resources/chords/Track1.txt"));
		readSong1.useDelimiter(",");
		Scanner readSong9 = new Scanner(new File("C:/Users/MoniRakesh/Desktop/ITU_Study/CapstoneProject/mssweProjmaster"
				+ "/musicAnalyser/src/main/webapp/resources/chords/Track9.txt"));
		readSong9.useDelimiter(",");
		while (readSong1.hasNext()) {
			song1.add(readSong1.next());
		}
		while (readSong9.hasNext()) {
			song9.add(readSong9.next());
		}

		String ssSong1 = "";
		/*for (int i = 0; i < song9.size(); i++) {
			
			ssSong1 = ssSong1 +(song9.get(i));
			
		}*/
			for (int i1 = 0; i1 < counter; i1++) {
			// System.out.println(s.charAt(i)+""+s.charAt(i+=1));
			str4Song1.add(song1.get(i1));
			
			}
         
		
		 //System.out.println(ssSong1);

		for (int j = 0; j < song9.size() - counter; j += 1) {
			
			for (int k = j; k < counter + j; k++) {
				// System.out.println(s.charAt(i)+""+s.charAt(i+=1));
				str4Song9.add(song9.get(k));
				ssSong1= ssSong1+ song9.get(j);
			}
			if (str4Song9.equals(str4Song1)) {
				found++;
				ssSong1= "<mark>"+ssSong1+"</mark>";;
				System.out.println(str4Song9+"..."+found);
				maxChords.add(found);
							
			}
			else{
				ssSong1=ssSong1;
			}

			str4Song9.clear();

		}
		//System.out.println(ssSong1);

		System.out.println(Collections.max(maxChords));
		/*PrintWriter outputfile = new PrintWriter("C:/Users/MoniRakesh/Desktop/ITU_Study/CapstoneProject/mssweProjmaster"
				+ "/musicAnalyser/src/main/webapp/resources/chords/OutTrack11.html");
		//replace your System.out.print("your output");
		    outputfile.print(ssSong1+"</div></body></html>");
		    outputfile.close(); 
		*/
	}

	/*public String compareSimilarity() throws FileNotFoundException {
		
		return String;


	}*/
}
