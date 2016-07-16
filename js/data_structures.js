// 7.2 Data Structures
// Benedict Schurwanz


// pseudocode
// array of four colors
// array of four names for horses

var colors = ["blue", "black", "purple", "rainbow"];
var names = ["Mr. Ed", "Mrs. Ed", "Artax", "Black Betty"];

// driver code
console.log(colors); 
console.log(names);

// add to each array
colors.push("white");
names.push("Sue");

// driver
console.log(colors); 
console.log(names);


// create an object with horse names and colors
var horseys = {};

for (i = 0; i < colors.length; i++){
	horseys[names[i]] = colors[i];
}

// console.log(horseys);



//  Car constructor
function Car(color, mileage){
	this.color = color;
	this.mileage = mileage; 
	this.horn = function(){
		console.log("Beep Beep!");
	}
}

// driver code
var modelT = new Car("black", 0);
var modelQ = new Car("rainbow", 7000000);

console.log("Our model T is a " + modelT.color + " car with " + modelT.mileage + " miles.");
console.log("We also have a pretty " + modelQ.color + " car with " + modelQ.mileage + " miles. But the horn still works...");
modelQ.horn();













