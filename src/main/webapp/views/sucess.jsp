<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.jay.jobapp.Model.JobPost" %>
<%@ page import="com.jay.jobapp.Repo.JobRepo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style2.css">
    <title>Job Added Successfully</title>
</head>
<body>
    <div class="container">
        <h2 class="heading">Job Added Successfully</h2>
        <div class="success-message">
            <p>Congratulations! Your job has been added successfully.</p>
            <p>Job Id: ${jobPost.postId}</p>
            <p>Job Profile: ${jobPost.postProfile}</p>
            <p>Job Description: ${jobPost.postDesc}</p>
            <p>Required Experience: ${jobPost.reqExperience} years</p>
            <p>Tech Stack: ${jobPost.postTechStack}</p>
        </div>
        <div class="button-container">
            <a href="/addJob" class="btn btn-primary">Add Another Job</a>
            <a href="viewJobs.jsp" class="btn btn-secondary">View All Jobs</a>
        </div>
    </div>
</body>
</html>