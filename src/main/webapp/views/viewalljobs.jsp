<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.jay.jobportal.Model.JobPost" %>
<%@ page import="com.jay.jobportal.Repository.JobRepo" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>All Jobs</title>
    <link rel="stylesheet" href="style3.css"> 
</head>
<body>
    <main>
        <div class="main">
            <h2>Here are all jobs</h2>
            <% 
                List<JobPost> jobPosts = (List<JobPost>) request.getAttribute("jobPosts"); 
                
                if (jobPosts != null) {
                    for (JobPost jobpost : jobPosts) { 
            %>
                        <p>Job ID: <%= jobpost.getPostId() %></p>
                        <p>Job Profile: <%= jobpost.getPostProfile() %></p>
                        <p>Job Description: <%= jobpost.getPostDesc() %></p>
                        <p>Job Experience: <%= jobpost.getReqExperience() %> years</p>
                        <p>Job Tech Stack:</p>
                        <ul>
                            <% for (String tech : jobpost.getPostTechStack()) { %>
                                <li><%= tech %></li>
                            <% } %>
                        </ul>
                        <hr>
            <% 
                    }
                } else { 
            %>
                <p>No job posts available.</p>
            <% 
                } 
            %>
        </div>
    </main>
</body>
</html>
