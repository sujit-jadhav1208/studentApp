package com.Spring.Myapp.controller;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
//import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Spring.Myapp.dao.HomeDao;
import com.Spring.Myapp.model.Hello;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private HomeDao homeDao;

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	// for mail option from email id and password is not given that should be given
	// in the servlet-context.xml
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		// List<Hello> list = homeDao.getEmployees();
		Gson gson = new Gson();
		// String jsonvalue = gson.toJson(list);
		// System.out.println("ooooooooooo" + jsonvalue);
		// model.addAttribute("list", jsonvalue);
		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping("/empForm")
	public String showform(Model m) {
		m.addAttribute("command", new Hello());
		return "empForm";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveEmp(@ModelAttribute("emp") Hello hello) {
		homeDao.save(hello);
		System.out.println("inside save");
		return "redirect:/viewemp/1";
	}

	@RequestMapping(value = "/editemp/{empID}")
	public String edit(@PathVariable int empID, Model m) {
		System.out.println("inside getEmpById controller");
		Hello emp = homeDao.getEmpById(empID);
		// System.out.println("getbyID"+emp);
		m.addAttribute("command", emp);
		return "empeditform";
	}

	@RequestMapping(value = "/updateemp", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("emp") Hello hello) {
		homeDao.update(hello);
		return "redirect:/viewemp/1";
	}

	@RequestMapping(value = "/deleteemp/{empID}", method = RequestMethod.GET)
	public String delete(@PathVariable int empID) {
		homeDao.delete(empID);
		return "redirect:/viewemp/1";
	}

	@RequestMapping(value = "/viewemp/{pageid}")
	public String edit1(@PathVariable int pageid, Model m) {
		int total = 15;
		if (pageid == 1) {
			List<Hello> list = homeDao.getEmployeesByPage(pageid, total);
			m.addAttribute("list", list);
		} else {
			pageid = (pageid - 1) * total + 1;
			List<Hello> list = homeDao.getEmployeesByPage(pageid, total);
			m.addAttribute("list", list);
		}

		return "viewemp";
	}

}