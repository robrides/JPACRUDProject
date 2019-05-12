package com.skilldistillery.users.controllers;

import java.sql.Date;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.users.data.SiteuserDAO;
import com.skilldistillery.users.entities.Siteuser;

@Controller
public class UsersiteController {

	@Autowired
	private SiteuserDAO siteuserDAO;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index() {
		return "WEB-INF/index.jsp";
	}

	@RequestMapping(path = "admin.do", method = RequestMethod.GET)
	public String admin(Model model) {
		model.addAttribute("siteuserList", siteuserDAO.findAll());
		return "WEB-INF/siteuser/admin.jsp";
	}

	@RequestMapping(path = "updateSiteuser.do", method = RequestMethod.POST)
	public String updateSiteuser(Model model, int suid) {
		model.addAttribute("siteuser", siteuserDAO.findById(suid));
		return "WEB-INF/siteuser/editsiteuser.jsp";
	}

	@RequestMapping(path = "register.do", method = RequestMethod.GET)
	public String addSiteuser(Model model) {
		Siteuser siteuser = new Siteuser();
		model.addAttribute(siteuser);
		return "WEB-INF/siteuser/register.jsp";
	}
	@RequestMapping(path = "registeradmin.do", method = RequestMethod.GET)
	public String adminAddSiteuser(Model model) {
		Siteuser siteuser = new Siteuser();
		model.addAttribute(siteuser);
		return "WEB-INF/siteuser/registeradmin.jsp";
	}

	@RequestMapping(path = "login", method = RequestMethod.GET)
	public String login(Model model) {
		Siteuser siteuser = new Siteuser();
		model.addAttribute(siteuser);
		return "WEB-INF/siteuser/login.jsp";
	}

	@RequestMapping(path = "login.do", method = RequestMethod.POST)
	public String loginSiteuser(Model model, Siteuser siteuser) {
		Siteuser loggedinUser = siteuserDAO.findByUsernamePwd(siteuser.getUsername(), siteuser.getPassword());
		model.addAttribute(loggedinUser);

		Calendar currenttime = Calendar.getInstance();
		Date sqlDate = new Date((currenttime.getTime()).getTime());
		loggedinUser.setLastLogin(sqlDate);
		loggedinUser = siteuserDAO.updateSiteuser(loggedinUser);

		if (loggedinUser.getUserType() == null) {
			return "WEB-INF/siteuser/show.jsp";
		} else if (loggedinUser.getUserType().equals("Admin")) {
			return "WEB-INF/siteuser/showadmin.jsp";
		} else {
			return "WEB-INF/siteuser/show.jsp";
		}
	}

	@RequestMapping(path = "deleteSiteuser.do", method = RequestMethod.POST)
	public String deleteSiteuser(Model model, int suid) {
		model.addAttribute("success", siteuserDAO.removeSiteuser(suid));
		return "WEB-INF/siteuser/deletesuccess.jsp";
	}

	@RequestMapping(path = "saveSiteuser.do", method = RequestMethod.POST)
	public String saveSiteuser(Model model, Siteuser siteuser) {
		Siteuser savedUser = siteuser;
		System.out.println("in controller: " + siteuser);
		if (siteuser != null && siteuser.getId() == 0) {
			System.out.println("in controller not null if: " + siteuser);
			savedUser = siteuserDAO.addSiteuser(siteuser);
			model.addAttribute("siteuser", savedUser);
		} else if (siteuser != null && siteuser.getId() != 0){
			savedUser = siteuserDAO.updateSiteuser(siteuser);
			model.addAttribute("siteuser", savedUser);
		} else {
			model.addAttribute("error", "Error encountered. Operation aborted.");
			return "WEB-INF/siteuser/editsiteuser.jsp";
		}
		if (savedUser.getUserType() == null) {
			model.addAttribute("siteuser", savedUser);
			model.addAttribute("error", "Dropdown fields have not been selected");
			return "WEB-INF/siteuser/editsiteuser.jsp";
		} else if (savedUser.getUserType().equals("Admin")) {
			model.addAttribute("siteuser", savedUser);
			return "WEB-INF/siteuser/showadmin.jsp";
		}
		return "WEB-INF/siteuser/show.jsp";

	}

	@RequestMapping(path = "getSiteuser.do", method = RequestMethod.GET)
	public String getSiteuserID(Model model, int suid) {
		Siteuser siteuser = siteuserDAO.findById(suid);
		if (siteuser != null) {
			model.addAttribute(siteuser);
			return "WEB-INF/siteuser/showadmin.jsp";
		} else {
			model.addAttribute("error", "User not found.");
			model.addAttribute("siteuserList", siteuserDAO.findAll());
			return "WEB-INF/siteuser/admin.jsp";
		}
	}
}
