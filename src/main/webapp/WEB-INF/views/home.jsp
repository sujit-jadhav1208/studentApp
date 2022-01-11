<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

<html ng-app="demoApp">
<head>
	<title>Home</title>
	<script src="lib/angular.js"></script>
	<script src="angularDemo.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<style>
	.inputs{
	outline: none;
    background-color: lavender;
	    padding: 5px 20px;
    border: 2px solid darkgrey;
    border-radius: 9px;
    font-family: monospace;
    color: black;}
    /* .one{
    border:4px solid red;
    width:300px;
    padding:10px;
    border-radius:8px;
    } */
     
</style>
<body >

<div style="text-align:center;" class="container-fluid">



<!-- <a href="sendemail" style="float:left;"> Send Email</a> -->
 			<a href="empForm" style="padding:20px;"><input type="button" value="Add student" class="inputs"/></a>
 			<a href="viewemp/1" ><input type="button" value="View students"  class="inputs" /></a>
 			<br><br>
 			
 			

</div>

</body>
</html>
