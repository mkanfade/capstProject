/**
 * 
 */
package com.musicAnalyser.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Hareesha
 * Feb 22, 2017
 */
@Entity
@Table(name="MUSIC")
public class SongDetails {
	
	@Id
	@Column(name="songName", nullable=false)
	private String songName;
	
	@Column(name="pattern")
	private String pattern;
	
	public String getSongName() {
		return songName;
	}
	public void setSongName(String songName) {
		this.songName = songName;
	}
	public String getPattern() {
		return pattern;
	}
	public void setPattern(String pattern) {
		this.pattern = pattern;
	}
	
}
