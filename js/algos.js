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
	for (var i = 0; i < Object.keys(firstObj).length; i++){
		key1 = Object.keys(firstObj)[i];
		value1 = firstObj[key1];
		console.log(key1 + ": " + value1);
	}



	return false; // if no match is found
}

var objOne = {name: "Spot", age: 2};
var objTwo = {name: "Jim", age: 3};

keyValMatch(objOne, objTwo);










// Driver Code Tests

var strings = ["long string", "longest string", "longer string"];
console.log(longestString(strings));

var words = ["longestest", "longest", "longish", "long", "short"];
console.log(longestString(words));












