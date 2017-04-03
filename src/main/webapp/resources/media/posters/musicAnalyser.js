var audio = new Audio();
audio.src="music/Track9.wav";
audio.controls="true";
audio.loop="true";
audio.autoplay="true";

var analyser,canvas,ctx, context, source, fbc_array, bars, bar_x, bar_width, bar_height;

window.addEventListener("load",audioPlayer,false);

function audioPlayer(){
document.getElementById('audioframe').appendChild(audio);
context = new AudioContext();
analyser = context.createAnalyser();
canvas = document.getElementById('equaliser');
ctx=canvas.getContext('2d');
source = context.createMediaElementSource(audio);
source.connect(analyser);
analyser.connect(context.destination);
visualiser();	
}

function visualiser(){

	requestAnimationFrame(visualiser);
	fbc_array = new Uint8Array(analyser.frequencyBinCount);
	analyser.getByteFrequencyData(fbc_array);
	ctx.clearRect(0, 0, canvas.width, canvas.height );
	 
	
	//ctx.fillStyle = '#00FF00';
	ctx.fillStyle = '#FF00FF';
	 bars=100;
	 for (var i =0; i < bars; i++){
		 bar_x = i * 3; 
		 bar_width = 2;
		 bar_height = -(fbc_array[i] / 2);
			 
			 ctx.fillRect(bar_x, canvas.height,bar_width, bar_height);
			 ctx.strokeRect(bar_x, canvas.height,bar_width, bar_height);

			}

}
