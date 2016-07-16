// 7.3 Solo Challenge: Algorithm Practice
// Benedict Schurwanz


// psuedocode - rel 0

// 		Function: takes an array of words or phrases, returns the longest word or phrase in the array
// 
// take an array of strings,
// make a variable to store the index of the longest string, initialize it to 0 (which is also the first element in the array)
// loop through the strings, do the following:
// check the length of the current string, store that in a variable
// if the length of the current string is longer than the length of the previous longest string, 
// update the longest-string-index to the current index
// 
// after the loop, the longest string index will be that of the longest string
// print out that string with our final index

function longestString(stringsArr){
	longestStrIndex = 0; 

	for (var i = 0; i < stringsArr.length; i++){
		newLongest = (stringsArr[i].length > stringsArr[longestStrIndex].length);
		// is current one longer? true or false 

		if (newLongest){
			longestStrIndex = i;
		}
		// update the index
	}

	return stringsArr[longestStrIndex]; 
	// return longest string
}



// Release 1 - key-value match
// algorithm

// takes two objects
// checks to see if they share at least one key-value pair

// store a boolean value equal to whether there's a match, initialize to false -- probably don't need to do this, can use 'return'
// use a nested loop, 
// outer loop moves through first object,
// inner loop moves through the second object,
// checking the current key-value of the first object 
// against each key-value in the second object
// if there is a match, return true
// if loop finishes, return false

// notes:
// key: Object.keys(firstObj)[i]
// value: firstObj[Object.keys(firstObj)[i]]

function keyValMatch(firstObj, secondObj){
	for (i = 0; i < Object.keys(firstObj).length; i++){
		var key1 = Object.keys(firstObj)[i];
		var value1 = firstObj[key1];

		for (j = 0; j < Object.keys(secondObj).length; j++){
			var key2 = Object.keys(secondObj)[j];
			var value2 = secondObj[key2];

			if ((key1 == key2) && (value1 == value2)){
				return true; // match is found
			}
		}
	}

	return false; // if no match is found
}



// Release 2 - generate random strings
// algorithm

// take integer for array length
// loop through that many times,
// determine a word length between 1 and 10,
// generate a word of random letters with that length

// how do I:
// generate a random letter?
//  - maybe use an alphabet array and use a random index
//  - check for built-in sample function
//  - check for different kinds of random functions

// notes:
// random integer between 1 and wordLength: Math.floor(Math.random() * wordLength) + 1
// access characters in a string: 
// 		string.charAt(index) 

function randomWords(howManyWords){
	var alphabet = "abcdefghijklmnopqrstuvwxyz"; 
	var words = [];
	for (var i = 0; i < howManyWords; i++){
		var wordLength = (Math.floor(Math.random() * 10)) + 1; // generate random number 1-10
		var word = "";

		for (var j = 0; j < wordLength; j++){
			var index = Math.floor(Math.random() * alphabet.length); 
			word = word.concat(alphabet.charAt(index));
		}
		words.push(word);
	}


	return words;
}




// Driver Code Tests
// longest string

var strings = ["long string", "longest string", "longer string"];
console.log(longestString(strings));

var words = ["longestest", "longest", "longish", "long", "short"];
console.log(longestString(words));


// key-value match

var objOne = {name: "Spot", age: 2, pet: true};
var objTwo = {name: "Jim", age: 3, pet: true};

var match = keyValMatch(objOne, objTwo);
console.log(match); // should be true

var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 55};

var match = keyValMatch(obj1, obj2);
console.log(match); // should be false


// random word generator, fed into longestString

for (var i = 0; i < 10; i++) {
	var howMany = (Math.floor(Math.random() * 10)) + 1;
	var words = randomWords(howMany);
	console.log(i);
	console.log(words);
	console.log(longestString(words));
}




