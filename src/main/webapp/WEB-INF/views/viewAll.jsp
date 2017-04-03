<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    
    <link rel="stylesheet" href="css/style-2.css" />
    <link rel="icon" href="media/logo.jpg">
    <style>
.row-fluid1{
     white-space: nowrap;
     
    
}
.row-fluid1 .col-sm1-3{
     display: inline-block;
     padding:20px;
}
</style>
      
  </head>
  <body class="body-bg">
  <div><jsp:include page='navigation.jsp'> <jsp:param name="nav" value=""/></jsp:include></div>
  
    <div class="container-fluid grey-bg" style="padding-top:70px;">
    	<div class="row">
    		<div class="col-sm-12 col-md-12">
    			<div class="container" >
						    	<!--New songs section  -->
						    	<div class="row" >
						    		<div class="col-sm-8 col-md-8" id="newsong">
						    			<h2>New Release</h2>
						    		</div>
						    		
						    	</div>
						    	<hr style="padding-bottom:20px">
						    	<!-- row to display new songs - poster and overlay -->
						    	
						    		<!-- overflow-x scroll -->
							    			<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    			<a href="visualiseSong?catg=New&tp=1" >
									    				<img src="posters/New1.jpg" class="rounded img-fluid" id="newsgpic" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw1');" onmouseout="javascript:hideOverLay('nw1');">
			  											<p class="text-center">Title1</p>
			  											<button id="nw1" class="btn-success rounded btn-overlay">Play</button></a>
									    			</div>
								    		</div>
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<a href="visualiseSong?catg=New&tp=2" >
									    				<img src="posters/New2.jpg" class="rounded img-fluid" id="newsgpic" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw2');" onmouseout="javascript:hideOverLay('nw2');">
			  											<p class="text-center">Title2</p>
			  											<button id="nw2" class="btn-success rounded btn-overlay">Play</button>
									    			</a></div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    			<a href="visualiseSong?catg=New&tp=3" >	<img src="posters/New3.jpg" class="rounded img-fluid" id="newsgpic"alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw3');" onmouseout="javascript:hideOverLay('nw3');">
			  											<p class="text-center">Title3</p>
			  											<button id="nw3" class="btn-success rounded btn-overlay">Play</button></a>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    			<a href="visualiseSong?catg=New&tp=4" >	<img src="posters/New4.jpg" class="rounded img-fluid" id="newsgpic" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw4');" onmouseout="javascript:hideOverLay('nw4');">
			  											<p class="text-center">Title4</p>
			  											<button id="nw4" class="btn-success rounded btn-overlay">Play</button></a>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2 ">
									    			<div class="img-container">
									    				<a href="visualiseSong?catg=New&tp=5" ><img src="posters/New5.jpg" class="rounded img-fluid" id="newsgpic" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw5');" onmouseout="javascript:hideOverLay('nw5');">
			  											<p class="text-center">Title5</p>
			  											<button id="nw5" class="btn-success rounded btn-overlay">Play</button></a>
									    			</div>
								    		</div>
								    		<div class="col-sm-2 col-md-2 ">
									    			<div class="img-container">
									    				<a href="visualiseSong?catg=New&tp=6" ><img src="posters/New6.jpg" class="rounded img-fluid" id="newsgpic" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw6');" onmouseout="javascript:hideOverLay('nw6');">
			  											<p class="text-center">Title6</p>
			  											<button id="nw6" class="btn-success rounded btn-overlay">Play</button></a>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    				<a href="visualiseSong?catg=New&tp=7" ><img src="posters/New7.jpg" class="rounded img-fluid" id="newsgpic" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw7');" onmouseout="javascript:hideOverLay('nw7');">
			  											<p class="text-center">Title7</p>
			  											<button id="nw7" class="btn-success rounded btn-overlay">Play</button></a>
									    			</div>
								    		</div>
								    		
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    			<a href="visualiseSong?catg=New&tp=8" >	<img src="posters/New8.png" class="rounded img-fluid" id="newsgpic" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw8');" onmouseout="javascript:hideOverLay('nw8');">
			  											<p class="text-center">Title8</p>
			  											<button id="nw8" class="btn-success rounded btn-overlay">Play</button></a>
									    			</div>
								    		</div>
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    			<a href="visualiseSong?catg=New&tp=9" >	<img src="posters/New9.jpg" class="rounded img-fluid" id="newsgpic" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw9');" onmouseout="javascript:hideOverLay('nw9');">
			  											<p class="text-center">Title9</p>
			  											<button id="nw9" class="btn-success rounded btn-overlay">Play</button></a>
									    			</div>
								    		</div>
								    		<div class="col-sm-2 col-md-2">
									    			<div class="img-container">
									    			<a href="visualiseSong?catg=New&tp=10" ><img src="posters/New10.jpg" class="rounded img-fluid" id="newsgpic" alt="hey-jude" 
			  											onmouseover="javascript:showOverLay('nw10');" onmouseout="javascript:hideOverLay('nw10');">
			  											<p class="text-center">Title10</p>
			  											<button id="nw10" class="btn-success rounded btn-overlay">Play</button></a>
									    			</div>
								    		</div>
						    		</div>
				</div>	 
			</div>
    	</div>
 
    
<script type="text/javascript">
		/* document.getElementById("music").onclick = function(){
		console.log("audio function");
		var audio = new Audio('music/track1.wav');
		audio.play();
	}; */
	
	function showOverLay(bn){
		var btn = document.getElementById(bn);
		btn.style.left="40%";
		btn.style.top="40%";
		btn.style.zIndex = "1";
	}
	
	function hideOverLay(bn){
		var btn = document.getElementById(bn);
		btn.style.left="0";
		btn.style.top="0";
		btn.style.zIndex="-1";
	}
	
	function addDetails(){
		var songName = document.getElementById("test").innerHTML; // this gets the song name from the heading
		console.log(songName);
		document.getElementById("hidden").value = songName;
		document.theForm.submit();
	}
	
	
	</script>
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  </body>
</html>


