
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
	.one{
	outline:0;
	color: #dc3545;
    text-align-last: center;
    font-weight: 700;}
    .two{
    font-weight: 700;
    color: #dc3545;
    }
    h3{
        text-align: center;
    	padding: 30px;
	    color: darkblue;
	    border-radius: 8px;
    }
    #savebtn{
   padding: 5px 30px;
    margin: 15px;
    background-color: cadetblue;
    color: white;
    outline: 0px;
    font-weight: 600;
    outline: none;
    border: none;
    font-style: revert;}
    
    .inputtab{
    padding: 0px 20px;
    margin: 3px;
    border: none;
    outline:none;
    }
    .menu{
     text-align: right;
    background-color: aquamarine;
    height: 50px;
    /* padding: 10px;     */
    border-bottom: 2px solid lightcoral;
    }
</style>
<body>
  
 
<div style="height:500px;width:400px;background-color:#f1f1f1;    border: 1px solid lightgrey;
	margin-top:10px;" class="container">
 <h3 >Add New student</h3>  
      <form:form method="post" action="save" style="padding:10px;">    
        <table >
        <tr>    
          <td class="two">Student ID :</td>    
          <td class="one"><form:input class="inputtab" path="student_no" value=" "/></td>  
         </tr>    
         <tr>    
          <td class="two">Student Name : </td>   
          <td class="one"><form:input class="inputtab" path="student_name"  /></td>  
         </tr>    
            
         <tr>    
          <td class="two">Student DOB :</td>    
          <td class="one"><form:input type="date" class="inputtab" path="student_dob" /></td>  
         </tr> 
         
          <tr>    
          <td class="two">Student DOJ :</td>    
          <td class="one"><form:input type="date" class="inputtab" path="student_doj" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td class="one" ><input type="submit" value="Save" id="savebtn"/></td>    
         </tr>    
        </table>    
       </form:form>    
       </div>
</body>
</html>