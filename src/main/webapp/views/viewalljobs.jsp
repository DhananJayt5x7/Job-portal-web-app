<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <style>
        /* Basic styles for the main container */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .main {
            max-width: 1200px;
            margin: 20px auto;
            padding: 10px;
        }
        h2 {
            text-align: center;
            color: #333;
        }

        /* Styles for the job card */
        .job-card {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: 20px 0;
            transition: box-shadow 0.3s ease;
        }
        .job-card:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .job-card h3 {
            margin-top: 0;
            color: #007BFF;
        }
        .job-card p {
            margin: 10px 0;
            color: #555;
        }
        .job-card ul {
            list-style-type: none;
            padding: 0;
        }
        .job-card ul li {
            background-color: #f1f1f1;
            padding: 8px;
            border-radius: 4px;
            margin-bottom: 5px;
            display: inline-block;
        }
    </style>
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
                        <div class="job-card">
                            <h3>Job Profile: <%= jobpost.getPostProfile() %></h3>
                            <p><strong>Job ID:</strong> <%= jobpost.getPostId() %></p>
                            <p><strong>Description:</strong> <%= jobpost.getPostDesc() %></p>
                            <p><strong>Experience Required:</strong> <%= jobpost.getReqExperience() %> years</p>
                            <p><strong>Tech Stack:</strong></p>
                            <ul>
                                <% for (String tech : jobpost.getPostTechStack()) { %>
                                    <li><%= tech %></li>
                                <% } %>
                            </ul>
                        </div>
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
