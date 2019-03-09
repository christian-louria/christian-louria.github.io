window.addEventListener("load", function() { 
   document.body.style.width='100%';
   document.body.style.height='100%';
}, false);

function updateClock() { 
	
}

function init(){
updateClock();
setInterval("updateClock();", 1000);
}