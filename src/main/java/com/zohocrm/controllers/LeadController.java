package com.zohocrm.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.entities.Lead;
import com.zohocrm.service.ContactService;
import com.zohocrm.service.LeadService;

@Controller
public class LeadController {
	@Autowired
	private LeadService leadService;
	
	@Autowired
	private ContactService contactService;
	
	
	@RequestMapping("/view")
	public String viewcreateLeadPage() {
		return "create_lead";
	}
	
	@RequestMapping("/saveLead")
	public String saveonelead(@ModelAttribute("lead") Lead lead,ModelMap model) {
		leadService.saveLead(lead);
		model.addAttribute("lead", lead);
		return "lead_info";		
	}
	@RequestMapping("/listallleads")
	public String listAllLeads(ModelMap model) {
		List<Lead> leads = leadService.findAllLeads();
		model.addAttribute("leads", leads);
		return "lead_result";
	}
	@RequestMapping("/getleadById")
	public String getLeadById(@RequestParam("id") long id,ModelMap model) {
		Lead lead = leadService.getLead(id);
		model.addAttribute("lead", lead);
        return "lead_info";
	}
	 @RequestMapping("/convertLead")
	public String convertLead(@RequestParam("id") long id,ModelMap model) {
			Lead lead = leadService.getLead(id);
          Contact contact = new Contact();
           contact.setFirstname(lead.getFirstname());
           contact.setLastname(lead.getLastname());
           contact.setEmail(lead.getEmail());
           contact.setLeadsource(lead.getLeadsource());
           contact.setMobile(lead.getMobile());
           contactService.saveContact(contact);
           
           leadService.deleteLead(id);
           List<Contact> contacts = contactService.findAllContacts();
           model.addAttribute("contacts", contacts);
			return "contact_result";
	}

}
