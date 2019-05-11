package com.skilldistillery.users.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.users.data.SiteuserDAO;
import com.skilldistillery.users.entities.Siteuser;

@Controller
public class UsersiteController {

	@Autowired
	private SiteuserDAO siteuserDAO;
	
	@RequestMapping(path="/", method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("siteuserList", siteuserDAO.findAll());
	  return "WEB-INF/index.jsp";
	}
	
	  @RequestMapping(path = "getSiteuser.do", method = RequestMethod.GET)
	  public ModelAndView getSiteuserID(@RequestParam("suid") int suid) {
	    ModelAndView mv = new ModelAndView();

	    Siteuser siteuser = siteuserDAO.findById(suid);     
	    // film is unmanaged after it is outside of the transaction that exists in the DAO

	    mv.addObject("siteuser", siteuser);
	    mv.setViewName("WEB-INF/siteuser/show.jsp");
	    return mv;
	  }
}
