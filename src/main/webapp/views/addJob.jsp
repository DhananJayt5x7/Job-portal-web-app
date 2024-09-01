<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Add Job</title>
</head>
<body>
    <div class="container">
        <h2 class="heading">Add Job</h2>
        <form action="/handleForm" method="post">
            <div class="form-group">
                <label for="postId">Job id</label>
                <input type="number" id="postId" name="postId" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="postProfile">Job Role</label>
                <textarea id="postProfile" name="postProfile" class="form-control" required></textarea>
            </div>
            <div class="form-group">
                <label for="postDesc">Job Description</label>
                <textarea id="postDesc" name="postDesc" class="form-control" required></textarea>
            </div>
            <div class="form-group">
                <label for="reqExperience">Required Experience (in years)</label>
                <input type="number" id="reqExperience" name="reqExperience" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="postTechStack">Tech Stack</label>
                <select name="postTechStack" id="postTechStack" multiple class="form-control">
                    <option value="Java">Java</option>
                    <option value="JavaScript">JavaScript</option>
                    <option value="Swift">Swift</option>
                    <option value="TypeScript">TypeScript</option>
                    <option value="Go">Go</option>
                    <option value="Kotlin">Kotlin</option>
                    <option value="Rust">Rust</option>
                    <option value="PHP">PHP</option>
                    <option value="HTML5">HTML5</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Add Job</button>
        </form>
    </div>
</body>
</html>