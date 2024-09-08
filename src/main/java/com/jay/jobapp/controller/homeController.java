package com.jay.jobapp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import  com.jay.jobapp.Model.JobPost;
import com.jay.jobapp.Services.JobService;

@Controller
public class homeController {
    @Autowired
    private JobService service;
    @RequestMapping({"/","/home"})
    public String index() {
        service.load();
        return "home";
    }
    @GetMapping("/viewalljobs")
    public String viewAllJobs(Model model){
        List<JobPost> jobPosts = service.getJobs();
        model.addAttribute("jobPosts", jobPosts);
        return "viewalljobs";
    }
    @RequestMapping("/addJob")
	public String addJob() {
		return "addJob";
	}
    @PostMapping("/handleForm")
    public String handleAddJobForm(JobPost jobPost , Model model){
        model.addAttribute("jobPost", jobPost);
        service.addJob(jobPost);
        return "sucess";
    }
    
}
