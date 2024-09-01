package com.jay.jobportal.Service;

import  com.jay.jobportal.Model.JobPost;
import com.jay.jobportal.Repository.JobRepo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class JobService {
    @Autowired
    JobRepo repo ;
    public List<JobPost> getJobs() {
        return repo.viewAllJobPost();
    }
    public void addJob(JobPost job) {
        repo.addJobPost(job);
    }
}
