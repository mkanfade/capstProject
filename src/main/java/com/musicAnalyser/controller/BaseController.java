package com.musicAnalyser.controller;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.musicAnalyser.beans.LoginBean;
import com.musicAnalyser.beans.LoginResult;
import com.musicAnalyser.beans.RegistrationBean;
import com.musicAnalyser.beans.SongDetails;
import com.musicAnalyser.beans.UtilitySong;
import com.musicAnalyser.beans.songInfo;
import com.musicAnalyser.beans.songSimilarity;
import com.musicAnalyser.dao.UserDAOImpl;
//import com.musicAnalyser.services.SimilarSongsService;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.musicAnalyser.beans.LoginBean;
import com.musicAnalyser.beans.LoginResult;
import com.musicAnalyser.beans.RegistrationBean;
import com.musicAnalyser.beans.SongDetails;
import com.musicAnalyser.dao.SimilarSongDAOImpl;
import com.musicAnalyser.dao.UserDAOImpl;



/**
 * @author Hareesha Feb 4, 2017
 */

@Controller
@RequestMapping(value = "/")
public class BaseController {

	@Autowired
	private UserDAOImpl dao;

	@Autowired
	private SimilarSongDAOImpl songdao;

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index() {

		// ModelAndView mv = new ModelAndView();
		System.out.println("login - jsp");
		// mv.setViewName("index");
		return "index";
	}

	/**
	 * This method handles to show the login display page
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView displayLogin(Model model) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		mv.addObject("message_name", "actual_message");

		model.addAttribute("loginUser", new LoginBean());// This is required,in
															// order to avoid
															// Binding errors
		System.out.println("in login");
		return mv;

	}

	/**
	 * service method to handel login and display dash board
	 * 
	 * @param loginBean
	 * @param result
	 * @param map
	 * @return
	 * 
	 */
	@RequestMapping(value = "handleLogin", method = RequestMethod.POST)
	public ModelAndView handelLogin(@ModelAttribute("loginUser") LoginBean loginBean, BindingResult result,
			ModelMap map) {
		System.out.println("we are here" + loginBean.getUname());
		ModelAndView mv = new ModelAndView();
		// Handle login code here
		LoginResult res = dao.loginUser(loginBean);
		if (res.isResult() == true) {
			String msg = res.getFname();
			mv.setViewName("dashboard");
			mv.addObject("successMsg", msg);
			map.addAttribute("songDetails", new SongDetails());
			return mv;
		}

		// some work is needed here , to show error message, need some script
		mv.setViewName("login");
		mv.addObject("errorMag", "Username/Password is incorrect");
		return mv;
	}

	/**
	 * This method displays the Registration page
	 * 
	 * @return
	 */

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public ModelAndView dislayRegister(Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("register");

		model.addAttribute("registerUser", new RegistrationBean());// this is
																	// required
																	// for
																	// binding
		return mv;
	}

	/**
	 * This method displays the Song Visualizer page
	 * 
	 * @return
	 */
	@RequestMapping(value = "visualiseSong")
	public ModelAndView dislaySong(@RequestParam("catg") String ctg, @RequestParam("tp") int num, Model model) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("visualiseSong");
		UtilitySong usng = new UtilitySong();
		usng.setCatg(ctg);
		// System.out.println("Request param = " + ctg);
		model.addAttribute("songsrc", usng.checkCatg(ctg) + num + ".wav");
		model.addAttribute("imgsrc", "posters/" + usng.checkID(ctg) + num + ".jpg");
		model.addAttribute("chordsrc", "chords/" + usng.checkTrack(ctg) + num + ".html");

		model.addAttribute("catgry", ctg);
		model.addAttribute("TrackID", usng.checkID(ctg));
		model.addAttribute("number", num);
		model.addAttribute("songDetails", new SongDetails());


		return mv;
	}

	/**
	 * This method displays back dashboard page in user session 
	 * 
	 * @return
	 */
	@RequestMapping(value = "dashboard")
	public ModelAndView dislaySong(Model model) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboard");

		return mv;
	}

	/**
	 * This method displays the all song page
	 * 
	 * @return
	 */
	@RequestMapping(value = "viewAll")
	public ModelAndView dislayAll(Model model) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewAll");

		return mv;
	}

	/**
	 * This method handles registration
	 * 
	 * @param regBean
	 * @return
	 */
	@RequestMapping(value = "handleRegistration", method = RequestMethod.POST)
	public ModelAndView handleRegistration(@ModelAttribute("registerUser") RegistrationBean regBean,
			BindingResult result, ModelMap map) {
		System.out.println("We are in handle registration method");
		// handle registration
		dao.addUser(regBean);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("dashboard");
		mv.addObject("successMsg", regBean.getFname());
		return mv;
	}

	/**
	 * This method handles the similar song link
	 * @param track
	 * @return
	 * @throws IOException 
	 */
		
	@RequestMapping(value = "similarSongs", method=RequestMethod.GET)
	public ModelAndView dislaysimilarSong(@RequestParam("source")String track,@RequestParam("ctg")String ctg,@RequestParam("id")String id, Model model) throws IOException {
		songInfo sgInfo = new songInfo();
		UtilitySong usng = new UtilitySong();
		songSimilarity sgSim= new songSimilarity();
		usng.setCatg(ctg);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("similarSongs");
		model.addAttribute("currentSongimg", track);
		model.addAttribute("songName", ctg+".Track"+id);
		model.addAttribute("songId",usng.checkID(ctg)+id );
		model.addAttribute("smlrsongPics",sgInfo.getsimSongPics(ctg+id));
		model.addAttribute("sgID",ctg+id);

		return mv;
	}


}
