package com.jay.jobportal.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import com.jay.jobportal.Model.JobPost;
import com.jay.jobportal.Service.JobService;

@Controller
public class JobPortalController {
    @Autowired
    private JobService service;
    @RequestMapping({"/","/home"})
    public String index() {
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
