// Javascript - Assignment 7.1
// Benedict Schurwanz - Chi Salamanders 2016 phase 0

// "reverse" function
// - take a string
// - take the last letter, and make it the first letter of a new string
// - do this over and over until the first string is empty
// - return the reversed string

function reverse(string) {
	reversedString = "";
	for (i = string.length -1; i >= 0; i -= 1) {
		reversedString = reversedString + string.charAt(i);
	}
	return reversedString;
}

var string = "Hello!";
var newString = reverse(string);
if (1 == 1) {
	console.log(newString);
}
