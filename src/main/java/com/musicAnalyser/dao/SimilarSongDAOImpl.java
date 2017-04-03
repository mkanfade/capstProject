/**
 * 
 */
package com.musicAnalyser.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author Hareesha
 * Feb 23, 2017
 */
public class SimilarSongDAOImpl implements SimilarSongDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	private Session session;
	private Transaction tx;
	private String Track;
	
	public String getTrack() {
		return Track;
	}
	
	@Override
	public void getSimilarSongs(String songName) {
		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		
		Query q = session.createQuery("Select u.pattern from SongDetails u where u.songName= :name");
		q.setParameter("name", songName);
		List<String> patterns = q.list();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
}
