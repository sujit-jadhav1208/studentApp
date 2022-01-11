
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Edit</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<style>
.rows {
	text-align: center;
	padding: 10px 40px;
	color: black;
	background-color: aliceblue;
}

.delete {
	height: 20px;
}

.edit {
	height: 24px;
}
.addemp{
	height:30px;
}
.menu{
     text-align: right;
   /*  background-color: aquamarine; */
    height: 50px;
    /* padding: 10px;     */
    border-bottom: 2px solid lightcoral;
    }
    
</style>

<body>
	<!-- style="height: 660px; background-image: linear-gradient(#00ffcc, #ffcccc);"> -->
	<div class="container-fluid menu">
	<!-- <a href="/Myapp"> <i style="font-size:33px;color:black;margin-top: 5px;padding: 0 10px;" class="material-icons">&#xe158;</i></a>
  -->
	<a href="/Myapp/empForm" ><i style="font-size: 33px;color: black;margin-top: 5px;
    padding: 0 10px;" class="material-icons">&#xe7fe;</i></a>
  <a href="/Myapp"> <i style="font-size:35px;color:black;padding: 0 10px;" class='fas'>&#xf015;</i></a>

 </div>
	<div
		style="text-align: center; margin-left: 300px; width: 740px;"
		class="container-fluid">
		<h1>Student List &nbsp </h1>
		<table class="table" border="0px" width="70%" cellpadding="1">
			<tr style="background-color: gray; color: white; padding: 10px 60px;">
				<th style="padding: 10px 60px;">ID</th>
				<th style="padding: 10px 60px;">NAME</th>
				<th style="padding: 10px 60px;">Date Of Birth</th>
				<th style="padding: 10px 60px;">Date Of Join</th>
				<th style="padding: 10px 60px;">Activity</th>
				<!-- <th style="padding: 20px 60px;">DELETE</th></tr> -->
				<c:forEach var="emp" items="${list}">
					<tr>
						<td class="rows">${emp.student_no}</td>
						<td class="rows">${emp.student_name}</td>
						<td class="rows">${emp.student_dob}</td>
						<td class="rows">${emp.student_doj}</td>
						<%-- <td>${emp.designation}</td>   <a href="empForm" style="padding:20px;"><input type="button" value="Add Employee" class="inputs"/></a>--%>
						<td class="rows">
						<a href="/Myapp/editemp/${emp.student_no}"> <img
								src="<c:url value="/resources/images/edit.png"/>" class="edit" /></a> &nbsp &nbsp
						<a href="/Myapp/deleteemp/${emp.student_no}" onclick="popup();"> <img
								src="<c:url value="/resources/images/delete.png"/>"
								class="delete" /></a></td>
					</tr>
				</c:forEach>
		</table>
		<br />
		<!-- <nav aria-label="...">
  <ul class="pagination pagination-lg">
    <li class="page-item active" aria-current="page">
      <span class="page-link"><a href="/Myapp/viewemp/1">1</a></span>
    </li>
    <li class="page-item"><a class="page-link" href="/Myapp/viewemp/2">2</a></li>
    <li class="page-item"><a class="page-link" href="/Myapp/viewemp/3">3</a></li>
  </ul>
</nav> -->
<!-- <div class="container">
 <ul class="pagination">
    <li class="page-item page"  onclick="click();"><a class="page-link" href="/Myapp/viewemp/1">1</a></li>
    <li class="page-item page"><a class="page-link" href="/Myapp/viewemp/2" onclick="click();">2</a></li>
    <li class="page-item page"><a class="page-link" href="/Myapp/viewemp/3">3</a></li>
  </ul>
</div> -->
		<!-- <a href="/Myapp/viewemp/1">1</a>     
   <a href="/Myapp/viewemp/2">2</a>     
   <a href="/Myapp/viewemp/3">3</a>   -->
	</div>
	<script type="text/javascript">
		function popup() {
			alert("Are You sure, You want to delete this Employee");
		}
		function click(){
			alert("hi");
		}
	</script>
</body>