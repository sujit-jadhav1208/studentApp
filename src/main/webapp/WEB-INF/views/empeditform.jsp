<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<title>Edit Student</title>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	</head>
	<style>
	.inputs{padding: 6px 20px;
    margin: 3px;
    border: 2px solid darkgrey;
    outline: none;
    border-radius: 10px;
	}
	.one{
	       outline: 0;
    color: #dc3545;
    text-align: left;
    font-weight: 700;
    font-family: -webkit-pictograph;
    font-size: larger;}
    .esave{
        padding: 15px 40px;
    margin: 15px;
    background-color: cadetblue;
    color: white;
    outline: 0px;
    font-weight: 600;
    outline: none;
    border: none;
    font-style: revert;
    border-radius: 22px;
    font-family: system-ui;}
	</style>
<body >
<!-- style="height: 578px;
  background-image: linear-gradient(#00ffcc, #ffcccc);"> -->
  <div style="text-align:center;margin-top:50px;" class="container-fluid">
		<h3 style="    font-size: 36px;    font-size: 36px;
    font-family: -webkit-pictograph;
    font-weight: 700;">Edit Student</h3>
     <div style="text-align:center;margin-left: 500px;">  <form:form method="POST" action="/Myapp/updateemp">  
      	<table >  
      	<tr>
      	<td></td>  
         <td><form:hidden  path="student_no" /></td>
         </tr> 
         <tr>  
          <td class="one">Name  </td> 
          <td><form:input  class="inputs" path="student_name"  /></td>
         </tr>  
         <tr>  
          <td  class="one">Date Of Birth </td>  
          <td><form:input  class="inputs" path="student_dob" /></td>
         </tr> 
          <tr>  
          <td  class="one">Date Of Join </td>  
          <td><form:input  class="inputs" path="student_doj" /></td>
         </tr> 
         <tr>  
          <td> </td>  
          <td><a href="updateemp"><input type="submit" class="esave" value="Edit Save" /></a></td>  
         </tr>  
        </table>  
       </form:form>
       </div>
       </div>  
</body>