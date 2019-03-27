window.addEventListener("load", function() { 
   document.body.style.width='100%';
   document.body.style.height='100%';
}, false);

function updateClock() { 
var currentTime = new Date();
var currentHours = currentTime.getHours();
var currentMinutes = currentTime.getMinutes() < 10 ? "0" + currentTime.getMinutes() : currentTime.getMinutes();
var currentSeconds = currentTime.getSeconds() < 10 ? currentTime.getSeconds() : currentTime.getSeconds();
var currentDate = currentTime.getDate() < 10 ? currentTime.getDate() : currentTime.getDate();
var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
timeOfDay = ( currentHours < 12 ) ? "am" : "pm";

if (Clock == "24h"){
	timeOfDay = "";
	currentHours = ( currentHours < 10 ? "0" : "" ) + currentHours;
	currentTimeString = currentHours + ":" + currentMinutes;
}
if (Clock == "12h"){
	currentHours = ( currentHours < 10 ? "0" : "" ) + currentHours;
	currentHours = ( currentHours > 12 ) ? currentHours - 12 : currentHours;
	currentHours = ( currentHours == 0 ) ? 12 : currentHours;
	currentTimeString = currentHours + ":" + currentMinutes;
}

document.getElementById("time").innerHTML =`${currentHours}:${currentMinutes}`;
}

function init(){
updateClock();
setInterval("updateClock();", 1000);
}