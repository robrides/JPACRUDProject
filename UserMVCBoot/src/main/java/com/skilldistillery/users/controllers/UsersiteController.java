package com.skilldistillery.users.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	@RequestMapping(path="addSiteuser.do", method = RequestMethod.GET)
	public String addSiteuser(Model model) {
		Siteuser siteuser = new Siteuser();
		model.addAttribute(siteuser);
		return "WEB-INF/siteuser/addsiteuser.jsp";
	}
	@RequestMapping(path="deleteSiteuser.do", method = RequestMethod.POST)
	public String deleteSiteuser(Model model, int suid) {
		System.out.println("Siteuser ID: " + suid);
		model.addAttribute("success", siteuserDAO.removeSiteuser(suid));
		return "WEB-INF/siteuser/deletesuccess.jsp";
	}
//	@RequestMapping(path="saveSiteuser.do", method = RequestMethod.POST)
//	public String updateSiteuser(Model model, int suid, Siteuser siteuser) {
//		model.addAttribute("siteuser", siteuserDAO.updateSiteuser(suid, siteuser));
//		return "WEB-INF/siteuser/show.jsp";
//	}
	
	@RequestMapping(path = "saveSiteuser.do", method=RequestMethod.POST)
	public ModelAndView updateSiteuser(@ModelAttribute("siteuser")Siteuser siteuser) {
		ModelAndView mv = new ModelAndView();
		Siteuser updatedSiteuser;
		
		if (siteuser != null) {
			updatedSiteuser = siteuserDAO.updateSiteuser(siteuser);
			mv.addObject("siteuser", updatedSiteuser);
		}
		else {
			mv.addObject("error", "Error encountered. User not updated");
		}
		mv.setViewName("WEB-INF/siteuser/show.jsp");
		
		return mv;
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
