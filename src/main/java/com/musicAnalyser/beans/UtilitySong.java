package com.musicAnalyser.beans;

public class UtilitySong {
	private String catg;
	private int picId;
	private String trcName;

	public String getTrcName() {
		return trcName;
	}

	public void setTrcName(String trcName) {
		this.trcName = trcName;
	}

	public int getPicId() {
		return picId;
	}

	public void setPicId(int picId) {
		this.picId = picId;
	}

	public String getCatg() {
		return catg;
	}

	public void setCatg(String catg) {
		this.catg = catg;
	}

	public String checkCatg(String cg) {
		if (this.catg.equals("Top")) {
			cg = "Top10/Track";
		} else {
			cg = "New10/New";
		}

		return cg;
	}

	public String checkID(String cg) {
		if (this.catg.equals("Top")) {
			cg = "Track";
		} else {
			cg = "New";
		}

		return cg;
	}

	public String checkTrack(String cg) {
		if (this.catg.equals("Top")) {
			cg = "Track";
		} else {
			cg = "New";
		}

		return cg;
	}

	
}
