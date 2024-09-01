<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job App</title>
    <!-- Link to the CSS file -->
     <link rel="stylesheet" href="style1.css">
</head>
<body>
    <header>
        <div>
            <container>
                <h1 class="text-center"><b>Job Portal Web App by DhananJay</b></h1>
                <ul>
                    <li><p><a href="home">Home</a></p></li>
                    <li><p><a href="viewalljobs">All Jobs</a></p></li>
                    <li><p><a href="contact">Contact</a></p></li>
                </ul>
            </container>
        </div>
    </header>
    <main>
        <div class="main">
            <div class="row">
                <!-- Card 1 -->
                <div class="col-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">View All Jobs</h5>
                            <form action="/viewalljobs" method="get">
                                <button type="submit">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Card 2 -->
                <div class="col-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Add Job</h5>
                            <form action="/addJob" method="post">
                                <button type="submit">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
</html> 