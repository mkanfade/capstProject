<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Music Visualizer</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">
<link rel="icon" href="media/logo.jpg">
<link rel="stylesheet" href="css/style-2.css" />
<link rel="stylesheet" href="css/style_m.css" />

<script src="js/similarSongs.js"></script>



</head>
<body class="body-bg">

	<div class="conatiner" style='padding-top: 20px'>
		<div class="row">
			<div class="col-sm-9 col-md-9"></div>
			<div class="col-sm-2 col-md-2">
				<button type="button" 
					class="btn btn-outline-warning btn-sm text-center"
					onclick="closeWin()" value="">Close</button>

			</div>
			<div class="col-sm-1 col-md-1"></div>
		</div>
	</div>
	<!-- Bootstrap Remade -->
	<div class="container"
		style="margin-top: 40px; background-color: #C6E2FF; border-radius: 40px;">
		<!-- Similar songs section -->
		<div class="row">
			<!-- Current song -->
			<div class="col-sm-1 col-md-1"></div>
			<div class="col-sm-4 col-md-4" id="currentSong">
				<p>Current Song : ${currentSong}</p>
				<img src="${currentSongimg}" id="newsgpic" class="rounded img-fluid"
					alt="${currentSongimg}"
					onmouseover="javascript:showOverLay('cs1');"
					onmouseout="javascript:hideOverLay('cs1');">
				<p class="text-center" style="color: black;">
					<b><spring:message code='${songName}' /></b>
				</p>
				<p class="text-center" style="color: black;" style="width: 400px;">
					<embed src="chords/OutTrack1.html" style="width:400px;">
							</embed>				
				</p>
			</div>
			<div class="col-sm-2 col-md-2"></div>
			<!-- Similar song list -->
			<div class="col-sm-4 col-md-2" id="similarSongs">
				<p>Song List:</p>
				<c:forTokens items="${smlrsongPics}" delims="," var="name">
					<div>
						<img src="posters/${name}.jpg" id="newsgpic"
							class="rounded img-fluid" alt="${name}"
							onmouseover="javascript:showOverLay('cs1');"
							onmouseout="javascript:hideOverLay('cs1');">
						<p class="text-center" style="color: black;">
							<iframe class="${sgID}" src="SimilarSongs/${sgID}/${name}.html" style="border:none;width:400px;" 
							>
							</iframe>
						</p>
				</c:forTokens>
				<p>
			</div>
		</div>
		<div class="col-sm-1 col-md-1"></div>
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

	<script>
		$(function() {
			$('#btn').click(function() {
				alert("Hello");
				$(".${sgID}").show();
			});
		});
	</script>
	<script type="text/javascript">
		function closeWin() {
			window.close();

		}
		function show() {
			var e = document.getElementById("${sgID}");
			e.style.visibility = 'visible';
		}
	</script>
</body>
</html>