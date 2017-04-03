<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">

<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300"
	rel="stylesheet">

<%--  <spring:url value="/resources/css/style.css" var="mainCss" />
    <link rel="stylesheet" href="${maincss}"/> --%>

<link rel="stylesheet" href="css/style.css" />
<link rel="icon" href="media/logo.jpg">

<script src="js/commons.js"></script>

</head>
<body class="body-bg">


	<nav class="navbar navbar-toggleable-md navbar-light"
		style="background-color: #e3f2fd;">
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarNav"
			aria-controls="navbarNav" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<a class="navbar-brand" href="#"> <img src="media/logo.jpg"
			width="50" height="50" class="d-inline-block align-center rounded"
			alt="logo">&nbsp;Music Analyzer&nbsp;
		</a>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="nav navbar-nav">
				<li class="nav-item active"><a class="nav-link a1" href="#">Charts
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Help&nbsp;Center</a></li>
			</ul>
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">
				<form class="form-inline">
					<button class="btn btn-warning btn-sm" type="button"
						onclick="return login_onclick()" id="login">Sign In</button>
					<label class="text-muted">&nbsp;&nbsp;or&nbsp;</label>&nbsp;&nbsp;&nbsp;
					<button class="btn btn-primary btn-sm" type="button"
						onclick="reg_onclick('register')">Create Account</button>
				</form>
			</div>
		</div>

	</nav>
	<div class="pattern-overlay wrapper">
		<video id="bgp" src="/media/bg.mp4" loop autoplay="autoplay"
			poster="media/bg-pic.jpg"></video>
		<hr class="ruler">


		<div class="container " id="body-content">
			<div class="row">
				<div class="col-md-12 vcenter">
					<h6 id="lead-txt">Analyze any music file you want with Music
						Analyzer</h6>
					<h3>dig the bits..</h3>
				</div>

				<div class="col-md-12 vcenter">
					<button type="button" class="btn btn-outline-success btn-lg" onclick="return login_onclick()" id="login">Learn
						More</button>
				</div>
			</div>
			<div class="row" style='padding-top:40px;'>
				<div class="col-md-2"></div>
				<div class="col-md-3 text-center">
					<div>
							<h4 class="text-center">Chord Extraction</h4>
							</div>
						<img src="media/land-2.png" class="rounded-circle" alt="Chord extraction"
							width="304" height="304">
					</div>
					<div class="col-md-3 text-center">
						<div>
							<h4>Play any Song</h4>
							</div>
						<img src="media/land-3.jpg" class="rounded-circle" alt="Play Song"
							width="304" height="304">
							
					</div>
					<div class="col-md-3 text-center">
						<div>
							<h4 class="text-center">Analyse Music</h4>
							</div>
						<img src="media/land1.jpg" class="rounded-circle" alt="analyze music"
							width="304" height="304">
					</div>
					
					<div class="col-md-1"></div>
			</div>
			<div class="row">
				<div class="col-md-12">&nbsp;</div>
			</div>
			
		</div>

	</div>


	<!-- jQuery first, then Tether, then Bootstrap JS. -->
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
		integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
		integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
		integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
		crossorigin="anonymous"></script>
</body>
</html>