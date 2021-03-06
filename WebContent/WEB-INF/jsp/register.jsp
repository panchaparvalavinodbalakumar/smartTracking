<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Add New Equipment</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
 
  <link rel="stylesheet" href="/resources/demos/style.css" />
  <script> function validateForm() 
       { 
	  if(document.frm.username.value=="") 
	  { alert("User Name should not be blank.."); 
	  document.frm.username.focus(); return false; 
	  } 
	  } 
  </script>

<style>
body {
	font-size: 20px;
	color: teal;
	font-family: Calibri;
	padding:40px;
}

td {
	font-size: 13.5px;
	
	font-style:bold;
	color: black;
	width: 110px;
	height: 22px;
	text-align:left;
}
 select {
        width:174px;
    }
  
    
.heading {	return null;
	font-size: 18px;
	color: white;
	font: bold;
	background-color: teal;
	border: thick;
}
div.ex {

	text-align: right width:100px;
	
	padding: 0px;
	border: 2px solid silver;
	top-margin: 50px
}
div.tl {
background-color: teal;
color:white;
	text-align: left ;
	padding: 10px;
	border: 2px solid silver;http://localhost:3333/SpringJDBCTemplate/getList
	margin: 0px
}
.btncolour{
color: white;
background-color: teal;
border-color: #4cae4c;
align:center;
width:80px;
}
</style>

<style>
    .datepicker{
     
    }
  </style>
  

 
 <script>
  $(function() {
    $( ".datepicker" ).datepicker({
    	 maxDate: new Date()
    }
    );
    $( ".datepicker1" ).datepicker({
		  minDate:0
	  }
			  );
    
  });
  </script>
  <script>
  
  /* $(function() {
	  $('.datepicker').change(function () {
	  var from = $('.datepicker').datepicker('getDate');
	 // var date_diff = Math.ceil((from.getTime() - Date.parse(today)) / 86400000);
	 var end = from.getFullYear()+"-"+from.getMonth()+1+"-"+fr<td><input type="submit" value="Save" /></td>om.getDate();
	  alert(from.getMonth()+1+"-"+from.getDate()+"-"+from.getFullYear());
	
	  var sd= $('#fromDate').val();
	  alert("sd"+sd);
	  $( ".datepicker1" ).datepicker({
		  minDate:from
	  }
			  );
	  })
    
  }); */
  </script>
   
</head>
<body>
<div class="ex">

	<div class="tl">
		 <b>Add New Equipment </b> </div>
		<br />
		<center>
			<form:form method="post" action="/SmartTrack/insert"  modelAttribute="user" name="frm">

				<table>
							<tr>
						<td>Equipment Id:</td>
						<td><form:input path="Equipment_Id" length="2" /></td>
					</tr>
					<tr>
	
						<td>Equipment Name:</td>
						<td><form:input path="Equipment_Name" name="username" /></td>
					</tr>
					<tr>
						<td>Equipment Type:</td>
						<td><form:select path="Equipment_Type_Name" items="${map.typeList}" /></td>
					</tr>
					<tr>
						<td>Description:</td>
						<td><form:input path="Description"/></td>
					</tr>
					<tr>
						<td>S NO:</td>
						<td><form:input path="S_NO" /></td>
					</tr>
					<tr>
						<td>Reg No:</td>
						<td><form:input path="Reg_No" /></td>
					</tr>
					<tr>
						<td>Facility Name:</td>
						<td><form:select path="Facility_Name" items="${map.facilitylistt}" /></td>
					</tr>
					 <tr>
						<td>Start Date:</td>
						<td><form:input path="Start_Date"  class="datepicker" /></td>
						
					</tr>
					<tr>
						<td>End Date:</td>
						<td><form:input path="End_Date"  class="datepicker1" /></td>
					</tr>
					<tr>
					<td></td>
				<td><input type="submit" value="Save" class="btncolour" name="submit"/></td>
					</tr>
			
					<tr>
					<td></td>
					
						<td colspan="2"><a href="getList">Click to See List of Equipment</a></td>
								
					</tr>

				</table>
			</form:form>
		</div>
	</center>
</body>
</html>