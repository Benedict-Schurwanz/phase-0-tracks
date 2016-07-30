console.log("script running")

function addBorder(event) {
	console.log("adding border")
	event.target.style.border = "5px gray inset"
}

var photos = document.getElementsByTagName("img");

for (i=0; i < 3; i++) {
	photos[i].addEventListener("mouseover", addBorder);
}