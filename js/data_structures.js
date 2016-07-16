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

console.log(horseys);

//     attempting code to loop through object to print out 'keys' and 'values' in a user friendly output - not working out so good yet...
// for (i = 0; i < horseys.length; i++){
// 	console.log(Object.keys(horseys)[i]);	
// }
