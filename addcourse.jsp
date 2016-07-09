<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js">
<script src="http://momentjs.com/downloads/moment-with-locales.js"></script>
<script src="http://momentjs.com/downloads/moment-timezone-with-data.js"></script>
<script src="eventjs.js"></script>
</head>
<body>

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Add Course</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Company Name">Name of The course</label>  
  <div class="col-md-6">
  <input id="course" name="Company Name" type="text" placeholder="Company Name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Address">Submitted By</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="Address" name="Address">Address</textarea>
  </div>
</div>
<div class="form-group">
<label class="col-md-4 control-label" for="Address">Image</label>
<div class="col-md-4">  
<span class="btn btn-primary">                   
    Choose file <input type="file" style="display: none;" multiple>
    </span>
    <input type="text" name="image" readonly>
  </div>
  
</div>




<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for=""></label>
  <div class="col-md-4">
    <button id="" name="" class="btn btn-success">Button</button>
  </div>
</div>

</fieldset>
</form>
</body>
</html>