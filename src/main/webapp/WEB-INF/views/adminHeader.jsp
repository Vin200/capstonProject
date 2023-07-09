<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

  <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" type="text/javascript"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.12.1/jquery-ui.min.js" type="text/javascript"></script>
    <link href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style>
        .navbar-light.bg-green {
            background-color: #c8e6c9; /* Light green background color */
        }
    </style>

<nav class="navbar navbar-expand-lg navbar-light bg-green " >
    <img src="/productImages/logo.jpg" width="60" height="60" class="d-inline-block align-top" alt="Happy Heels">
	<a class="navbar-brand" href="#">Medicare</a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
	      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	 <div class="collapse navbar-collapse" id="navbarNav">
 		<ul class="nav nav-pills ml-auto" role="tablist">
    	<li class="nav-item">
          <a class="nav-link" href="#">Dashboard</a>
    	</li>
    	<c:choose> 
			    <c:when test = "${not empty userEmailId }">
			    <li><span class="badge badge-success" style = "font-size: x-large;">Hi! ${userName}</span></li>
			    <li class="nav-item"><a class="nav-link" href="/logout">
			    <img src="/images/Logout.png" width="30" height="30" class="d-inline-block align-top" alt="">
			    Logout</a>
			    </li> 	
			</c:when>
 		</c:choose>
 		</ul>
 	</div>
 </nav>


</html>