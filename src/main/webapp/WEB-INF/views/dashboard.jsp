<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/style-2.css" />
<link rel="stylesheet" href="css/style_m.css" />

<link rel="icon" href="media/logo.jpg">
<style>
</style>

</head>
<body>
	<div><jsp:include page='navigation.jsp'>
			<jsp:param name="nav" value="" /></jsp:include></div>
	<div class="container-fluid">
		<!-- Welcomemessage -->
		<div class="row">
			<div class="col-sm-12 col-md-12"
				style="padding-top: 10px; padding-bottom: 30px;">
				<p class="text-center">Hi ${successMsg}.Welcome to Music
					Analyser !</p>

			</div>
		</div>
		<!-- Top ten songs -->
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<h2 class="text-center">Top Ten Songs</h2>

				<!-- container for single song -->
				<div class="container">
					<hr>
					<!-- 1st row Top songs -->
					<div class="row" style="padding-bottom: 70px">

						<!-- 1st song -->
						<div class="col-sm-1 col-md-1"></div>
						<div class="col-sm-2 col-md-2">
							<h6 id="test" class="text-center">"Track1"</h6>
							<!--is to test similar links concept  -->
							<div class="text-center img-container">
								<a href="visualiseSong?catg=Top&tp=1"> <img
									src="posters/Track1.jpg" class="rounded img-fluid"
									alt="hey-jude" onmouseover="javascript:showOverLay('tp1');"
									onmouseout="javascript:hideOverLay('tp1');">
									<button id="tp1" class="btn-success rounded btn-overlay"
										value="Track1.mp3">Play</button></a> <b><spring:message
										code='Top.Track1' /></b>


							</div>


						</div>
						<!-- 2ns song -->
						<div class="col-sm-2 col-md-2">
							<h6 class="text-center">"Track2"</h6>
							<div class="text-center img-container">
								<a href="visualiseSong?catg=Top&tp=2"><img
									src="posters/Track2.jpg" class="rounded img-fluid"
									alt="hey-jude" onmouseover="javascript:showOverLay('tp2');"
									onmouseout="javascript:hideOverLay('tp2');">
									<button id="tp2" class="btn-success rounded btn-overlay">Play</button></a>
								<b><spring:message code='Top.Track2' /></b>
							</div>

						</div>
						<!-- 3rd song -->
						<div class="col-sm-2 col-md-2">
							<h6 class="text-center">"Track3"</h6>
							<div class="text-center img-container">
								<a href="visualiseSong?catg=Top&tp=3"> <img
									src="posters/Track3.jpg" class="rounded img-fluid"
									alt="hey-jude" onmouseover="javascript:showOverLay('tp3');"
									onmouseout="javascript:hideOverLay('tp3');">
									<button id="tp3" class="btn-success rounded btn-overlay">Play</button></a>
								<b><spring:message code='Top.Track3' /></b>
							</div>
						</div>
						<!-- 4th song -->
						<div class="col-sm-2 col-md-2">
							<h6 class="text-center">"Track4"</h6>
							<div class="text-center img-container">
								<a href="visualiseSong?catg=Top&tp=4"> <img
									src="posters/Track4.jpg" class="rounded img-fluid"
									alt="hey-jude" onmouseover="javascript:showOverLay('tp4');"
									onmouseout="javascript:hideOverLay('tp4');">
									<button id="tp4" class="btn-success rounded btn-overlay">Play</button></a>
								<b><spring:message code='Top.Track4' /></b>
							</div>
						</div>

						<!-- 5th song -->
						<div class="col-sm-2 col-md-2">
							<h6 class="text-center">"Track5"</h6>
							<div class="text-center img-container">
								<a href="visualiseSong?catg=Top&tp=5"><img
									src="posters/Track5.jpg" class="rounded img-fluid"
									alt="hey-jude" onmouseover="javascript:showOverLay('tp5');"
									onmouseout="javascript:hideOverLay('tp5');">
									<button id="tp5" class="btn-success rounded btn-overlay">Play</button></a>
								<b><spring:message code='Top.Track5' /></b>
							</div>
						</div>
						<div class="col-sm-1 col-md-1"></div>
					</div>

					<!-- 2nd row Top songs -->
					<div class="row" style="padding-bottom: 120px">
						<!-- 1st song -->
						<div class="col-sm-1 col-md-1"></div>
						<div class="col-sm-2 col-md-2">
							<h6 class="text-center">"Track6"</h6>
							<div class="text-center img-container">
								<a href="visualiseSong?catg=Top&tp=6"><img
									src="posters/Track6.jpg" class="rounded img-fluid"
									alt="hey-jude" onmouseover="javascript:showOverLay('tp6');"
									onmouseout="javascript:hideOverLay('tp6');">
									<button id="tp6" class="btn-success rounded btn-overlay">Play</button></a>
								<b><spring:message code='Top.Track6' /></b>
							</div>
						</div>
						<!-- 2ns song -->
						<div class="col-sm-2 col-md-2">
							<h6 class="text-center">"Track7"</h6>
							<div class="text-center img-container">
								<a href="visualiseSong?catg=Top&tp=7"><img
									src="posters/Track7.jpg" class="rounded img-fluid"
									alt="hey-jude" onmouseover="javascript:showOverLay('tp7');"
									onmouseout="javascript:hideOverLay('tp7');">
									<button id="tp7" class="btn-success rounded btn-overlay">Play</button></a>
								<b><spring:message code='Top.Track7' /></b>
							</div>
						</div>
						<!-- 3rd song -->
						<div class="col-sm-2 col-md-2">
							<h6 class="text-center">"Track8"</h6>
							<div class="text-center img-container">
								<a href="visualiseSong?catg=Top&tp=8"><img
									src="posters/Track8.jpg" class="rounded img-fluid"
									alt="hey-jude" onmouseover="javascript:showOverLay('tp8');"
									onmouseout="javascript:hideOverLay('tp8');">
									<button id="tp8" class="btn-success rounded btn-overlay">Play</button></a>
								<b><spring:message code='Top.Track8' /></b>
							</div>
						</div>
						<!-- 4th song -->
						<div class="col-sm-2 col-md-2">
							<h6 class="text-center">"Track9"</h6>
							<div class="text-center img-container">
								<a href="visualiseSong?catg=Top&tp=9"><img
									src="posters/Track9.jpg" class="rounded img-fluid"
									alt="hey-jude" onmouseover="javascript:showOverLay('tp9');"
									onmouseout="javascript:hideOverLay('tp9');">
									<button id="tp9" class="btn-success rounded btn-overlay">Play</button></a>
								<b><spring:message code='Top.Track9' /></b>
							</div>
						</div>

						<!-- 5th song -->
						<div class="col-sm-2 col-md-2">
							<h6 class="text-center">"Track10"</h6>
							<div class="text-center img-container">
								<a href="visualiseSong?catg=Top&tp=10"><img
									src="posters/Track10.jpg" class="rounded img-fluid"
									alt="hey-jude" onmouseover="javascript:showOverLay('tp10');"
									onmouseout="javascript:hideOverLay('tp10');">
									<button id="tp10" class="btn-success rounded btn-overlay">Play</button></a>
								<b><spring:message code='Top.Track10' /></b>
							</div>
						</div>
						<div class="col-sm-1 col-md-1"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid grey-bg"
		style="padding-top: 5px; padding-bottom: 100px;">
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<div class="container">
					<!--New songs section  -->
					<div class="row">
						<div class="col-sm-8 col-md-8" id="newsong">
							<h2 style="text-align: left">New Release</h2>
						</div>
						<div class="col-sm-4 col-md-4">
							<h2 class="text-right">
								<a href="viewAll#newsong">All Song &rsaquo;</a>
							</h2>
						</div>
					</div>

					<hr style="padding-bottom: 10px">
					<!-- row to display new songs - poster and overlay -->
					<!-- overflow-x scroll -->
					<div class="container"
						style="overflow-x: scroll; overflow-y: hidden; height: 200px;">
						<div class="row-fluid1">
							<div class="col-sm1-3">
								<b><spring:message code='New.Track1' /></b>
								<div class="img-container">

									<a href="visualiseSong?catg=New&tp=1"> <img
										src="posters/New1.jpg" class="rounded img-fluid" id="newsgpic"
										alt="hey-jude" onmouseover="javascript:showOverLay('nw1');"
										onmouseout="javascript:hideOverLay('nw1');">
										<p class="text-center">Title1</p>
										<button id="nw1" class="btn-success rounded btn-overlay">Play</button></a>
								</div>
							</div>
							<div class=col-sm1-3>
								<b><spring:message code='New.Track2' /></b>
								<div class="img-container">
									<a href="visualiseSong?catg=New&tp=2"> <img
										src="posters/New2.jpg" class="rounded img-fluid" id="newsgpic"
										alt="hey-jude" onmouseover="javascript:showOverLay('nw2');"
										onmouseout="javascript:hideOverLay('nw2');">
										<p class="text-center">Title2</p>
										<button id="nw2" class="btn-success rounded btn-overlay">Play</button>
									</a>
								</div>
							</div>

							<div class="col-sm1-3">
								<b><spring:message code='New.Track3' /></b>
								<div class="img-container">
									<a href="visualiseSong?catg=New&tp=3"> <img
										src="posters/New3.jpg" class="rounded img-fluid" id="newsgpic"
										alt="hey-jude" onmouseover="javascript:showOverLay('nw3');"
										onmouseout="javascript:hideOverLay('nw3');">
										<p class="text-center">Title3</p>
										<button id="nw3" class="btn-success rounded btn-overlay">Play</button></a>
								</div>
							</div>

							<div class="col-sm1-3">
								<b><spring:message code='New.Track4' /></b>
								<div class="img-container">
									<a href="visualiseSong?catg=New&tp=4"> <img
										src="posters/New4.jpg" class="rounded img-fluid" id="newsgpic"
										alt="hey-jude" onmouseover="javascript:showOverLay('nw4');"
										onmouseout="javascript:hideOverLay('nw4');">
										<p class="text-center">Title4</p>
										<button id="nw4" class="btn-success rounded btn-overlay">Play</button></a>
								</div>
							</div>

							<div class="col-sm1-3 ">
								<b><spring:message code='New.Track5' /></b>
								<div class="img-container">
									<a href="visualiseSong?catg=New&tp=5"><img
										src="posters/New5.jpg" class="rounded img-fluid" id="newsgpic"
										alt="hey-jude" onmouseover="javascript:showOverLay('nw5');"
										onmouseout="javascript:hideOverLay('nw5');">
										<p class="text-center">Title5</p>
										<button id="nw5" class="btn-success rounded btn-overlay">Play</button></a>
								</div>
							</div>
							<div class="col-sm1-3 ">
								<b><spring:message code='New.Track6' /></b>
								<div class="img-container">
									<a href="visualiseSong?catg=New&tp=6"><img
										src="posters/New6.jpg" class="rounded img-fluid" id="newsgpic"
										alt="hey-jude" onmouseover="javascript:showOverLay('nw6');"
										onmouseout="javascript:hideOverLay('nw6');">
										<p class="text-center">Title6</p>
										<button id="nw6" class="btn-success rounded btn-overlay">Play</button></a>
								</div>
							</div>

							<div class="col-sm1-3">
								<b><spring:message code='New.Track7' /></b>
								<div class="img-container">
									<a href="visualiseSong?catg=New&tp=7"><img
										src="posters/New7.jpg" class="rounded img-fluid" id="newsgpic"
										alt="hey-jude" onmouseover="javascript:showOverLay('nw7');"
										onmouseout="javascript:hideOverLay('nw7');">
										<p class="text-center">Title7</p>
										<button id="nw7" class="btn-success rounded btn-overlay">Play</button></a>
								</div>
							</div>

							<div class="col-sm1-3">
								<b><spring:message code='New.Track8' /></b>
								<div class="img-container">
									<a href="visualiseSong?catg=New&tp=8"> <img
										src="posters/New8.png" class="rounded img-fluid" id="newsgpic"
										alt="hey-jude" onmouseover="javascript:showOverLay('nw8');"
										onmouseout="javascript:hideOverLay('nw8');">
										<p class="text-center">Title8</p>
										<button id="nw8" class="btn-success rounded btn-overlay">Play</button></a>
								</div>
							</div>
							<div class="col-sm1-3">
								<b><spring:message code='New.Track9' /></b>
								<div class="img-container">
									<a href="visualiseSong?catg=New&tp=9"> <img
										src="posters/New9.jpg" class="rounded img-fluid" id="newsgpic"
										alt="hey-jude" onmouseover="javascript:showOverLay('nw9');"
										onmouseout="javascript:hideOverLay('nw9');">
										<p class="text-center">Title9</p>
										<button id="nw9" class="btn-success rounded btn-overlay">Play</button></a>
								</div>
							</div>
							<div class="col-sm1-3">
								<b><spring:message code='New.Track10' /></b>
								<div class="img-container">
									<a href="visualiseSong?catg=New&tp=10"><img
										src="posters/New10.jpg" class="rounded img-fluid"
										id="newsgpic" alt="hey-jude"
										onmouseover="javascript:showOverLay('nw10');"
										onmouseout="javascript:hideOverLay('nw10');">
										<p class="text-center">Title10</p>
										<button id="nw10" class="btn-success rounded btn-overlay">Play</button></a>
								</div>
							</div>
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

		function showOverLay(bn) {
			var btn = document.getElementById(bn);
			btn.style.left = "40%";
			btn.style.top = "40%";
			btn.style.zIndex = "1";
		}

		function hideOverLay(bn) {
			var btn = document.getElementById(bn);
			btn.style.left = "0";
			btn.style.top = "0";
			btn.style.zIndex = "-1";
		}

		function addDetails() {
			var songName = document.getElementById("test").innerHTML; // this gets the song name from the heading
			console.log(songName);
			document.getElementById("hidden").value = songName;
			document.theForm.submit();
		}
	</script>
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


