package com.jay.jobapp.Services;
import  com.jay.jobapp.Model.JobPost;
import com.jay.jobapp.Repo.JobRepo;

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
