package com.jay.jobapp.Services;
import  com.jay.jobapp.Model.JobPost;
import com.jay.jobapp.Repo.JobRepo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class JobService {
    @Autowired
    JobRepo repo ;
    public List<JobPost> getJobs() {
        return repo.findAll();
    }
    public JobPost getJob(int id) {
        return repo.findById(id).get();
    }
    public void addJob(JobPost job) {
        repo.save(job);
    }
    public void deleteJob(JobPost job) {
        repo.delete(job);
    }
    public void updateJob(JobPost job) {
        repo.save(job);
    }
    public void saveAll(List<JobPost> jobs) {
        repo.saveAll(jobs);
    }
    public  List<JobPost> searchByKeyword(String keyword) {
        return repo.findByPostProfileContainingOrPostDescContaining(keyword, keyword);
    }
    public void load() {
        List<JobPost> jobs = 
					new ArrayList<>(List.of(
							new JobPost(1, "Software Engineer", "Exciting opportunity for a skilled software engineer.", 3, List.of("Java", "Spring", "SQL","API")),
							new JobPost(2, "Data Scientist", "Join our data science team and work on cutting-edge projects.", 5, List.of("Python", "Machine Learning", "TensorFlow","API")),
							 new JobPost(3, "Frontend Developer", "Create API amazing user interfaces with our talented frontend team.", 2, List.of("JavaScript", "React", "CSS","API")),
							 new JobPost(4, "Network Engineer", "Design and API maintain our robust network infrastructure.", 4, List.of("Cisco", "Routing", "Firewalls")),
							 new JobPost(5, "UX Designer", "Shape the user experience with your creative design skills.", 3, List.of("UI/UX Design", "Adobe XD", "Prototyping"))

					));
		
			repo.saveAll(jobs);
    }
}
