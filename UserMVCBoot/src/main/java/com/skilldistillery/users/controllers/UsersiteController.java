package com.skilldistillery.users.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.users.data.SiteuserDAO;
import com.skilldistillery.users.entities.Siteuser;

@Controller
public class UsersiteController {

	@Autowired
	private SiteuserDAO siteuserDAO;
	
	@RequestMapping(path="/", method = RequestMethod.GET)
	public String index() {
	  return "WEB-INF/index.jsp";
	}
	
	@RequestMapping(path="admin.do", method = RequestMethod.GET)
	public String admin(Model model) {
		model.addAttribute("siteuserList", siteuserDAO.findAll());
	  return "WEB-INF/siteuser/admin.jsp";
	}
	
	@RequestMapping(path="updateSiteuser.do", method = RequestMethod.POST)
	public String updateSiteuser(Model model, int suid) {
		model.addAttribute("siteuser", siteuserDAO.findById(suid));
		return "WEB-INF/siteuser/editsiteuser.jsp";
	}
	
	@RequestMapping(path="register.do", method = RequestMethod.GET)
	public String addSiteuser(Model model) {
		Siteuser siteuser = new Siteuser();
		model.addAttribute(siteuser);
		return "WEB-INF/siteuser/register.jsp";
	}
	@RequestMapping(path="login", method = RequestMethod.GET)
	public String login(Model model) {
		Siteuser siteuser = new Siteuser();
		model.addAttribute(siteuser);
		return "WEB-INF/siteuser/login.jsp";
	}
	@RequestMapping(path="login.do", method = RequestMethod.POST)
	public String loginSiteuser(Model model, Siteuser siteuser) {
		Siteuser loggedinUser =siteuserDAO.findByUsernamePwd(siteuser.getUsername(), siteuser.getPassword()); 
		model.addAttribute(loggedinUser);
				
		return "WEB-INF/siteuser/show.jsp";
	}
	
	@RequestMapping(path="deleteSiteuser.do", method = RequestMethod.POST)
	public String deleteSiteuser(Model model, int suid) {
		model.addAttribute("success", siteuserDAO.removeSiteuser(suid));
		return "WEB-INF/siteuser/deletesuccess.jsp";
	}
	
	@RequestMapping(path = "saveSiteuser.do", method=RequestMethod.POST)
	public String updateSiteuser(Model model, Siteuser siteuser) {
		Siteuser updatedSiteuser;
		
		if (siteuser != null) {
			updatedSiteuser = siteuserDAO.updateSiteuser(siteuser);
			model.addAttribute("siteuser", updatedSiteuser);
		}
		else {
			model.addAttribute("error", "Error encountered. User not updated");
		}
		
		return "WEB-INF/siteuser/show.jsp";
	}
	
	  @RequestMapping(path = "getSiteuser.do", method = RequestMethod.GET)
	  public String getSiteuserID(Model model, int suid) {
	    Siteuser siteuser = siteuserDAO.findById(suid); 
	    if(siteuser != null) {
	    	model.addAttribute(siteuser);
	    return "WEB-INF/siteuser/show.jsp";
	    }
	    else {
	    	model.addAttribute("error", "User not found.");
			model.addAttribute("siteuserList", siteuserDAO.findAll());
	    	return "WEB-INF/siteuser/admin.jsp";
	    }
	  }
}
