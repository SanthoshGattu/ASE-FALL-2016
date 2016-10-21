<!DOCTYPE html>
<html>
<head>
    <title>Area and Perimeter Webservices</title>

    <meta charset="utf-8" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
	<style>

	html,body{
		height:100%;		
	}
	.container{
		background-image:url("https://fullaccessnyc.files.wordpress.com/2014/06/downtown-manhattan.jpg");
		width:100%;
		height:100%;
		background-size:cover;
		background-position: center;
		padding-top: 25px;
	}


	.center{
		text-align: center;

	}

	.white{
		color:white;
	}
	p{
		padding-top: 15px;
		padding-bottom:15px;
	}

	button{
		margin-top: 20px;
		margin-bottom: 20px;
		
	}

	.alert{
		margin-top: 20px;
		display:none;
	
	}
	.whiteBackground{
		background-color:light-blue;
		padding:20px;
		border-radius:20px;
	}
	</style>

 </head>

<body>

	<div class = "container">

			<div class = "row">

				<div class = "col-md-6 col-md-offset-3 center whiteBackground">
					<h1 class = "center ">  Area and Perimeter Web Services  </h1>
					<p class = "lead center ">Find area and perimeter of Square easily!</p>
				<form>
					<div class = "form-group">
						<input type = "text" class = "form-control" name = "address" id = "address" 
						placeholder = "Enter side of the square"/>
					</div>
				<button id = "findArea" class = "btn btn-primary btn-lg "> Find Area </button>
				<button id = "findPerimetr" class = "btn btn-primary btn-lg "> Find Perimeter </button>
				</form>

				<div id = "success"class = "alert alert-success">Success!</div>
				<div id = "fail" class = "alert alert-danger">Enter a valid city </div>
					
				<div id = "nocity" class = "alert alert-danger">Please enter a city </div>
				
			
				
				</div>

			


			</div> 
	</div>
	
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script>

$("#findPerimetr").click(function(event){
	event.preventDefault();
	$.ajax({
            type: "GET",
            url: "http://localhost:8080/Lab8/webapi/perimeterservice/",
            dataType: "xml",
	        success: processJSON }); 
			
			    function processJSON(xml) {
			    	$(xml).find('perimeterservice').each(function(){
	                    var name = $(this).find("perimeteroutput").text();
	                    $("#success").fadeIn();
						$("#success").html(name);
	                });
            }
			
        });

$("#findArea").click(function(event){
	event.preventDefault();
	$.ajax({
            type: "GET",
            url: "http://localhost:8080/Lab8/webapi/areaservice/",
            dataType: "xml",
	        success: processJSON }); 
			
			    function processJSON(xml) {
			    	$(xml).find('areaconversion').each(function(){
	                    var name = $(this).find("areaoutput").text();
	                    $("#success").fadeIn();
						$("#success").html(name);
	                });
            }
			
        });

 

</script>

</body>
</html>