/* 
Release 0: Find the Longest Phrase

- This function will take in an array as a parameter 
- Make a new variable called longestPhrase and set it to index 0
- Iterate through the array for with a for loop 
- Write an if conditional to test if it's length is larger than the default
- Return phrase 
*/

function findLongest(array) { 
	var longestPhrase = array[0]
	for (var i = 0; i < array.length; i++) { 
		if (longestPhrase.length < array[i].length) { 
			longestPhrase = array[i]
		}
	}
	return longestPhrase; 
}

//DRIVER CODE
// console.log(findLongest(["long phrase","longest phrase","longer phrase"]))
// console.log(findLongest(["cheetahs","jaguars","pumas"]))
// console.log(findLongest(["snap","crack","pop"]))

/* 
Release 1: Find a Key-Value Match

- The function will take in two objects as parameters 
- Write a "for in" loop so that it can iterate through the objects 
- Write a conditional to compare the key-value pairs 
	- If there is a match, return boolean true
- After the loop has finished, and a match has not been found, return false 
*/ 

function keyValueMatch(obj, obj2) { 
	for (var key in obj) { 
		if (obj[key] == obj2[key]) { 
			return true;
		} 
	}
	return false
}

// DRIVER CODE 
// console.log(keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54} ))
// console.log(keyValueMatch({dessert: "Cake", flavor: "Strawberry"}, {dessert: "Ice Cream", flavor: "Chocolate"}))
// console.log(keyValueMatch({species: "Pokemon", type: "Leaf"}, {species: "Pokemon", type: "Normal"}))

/*
Release 2: Generate Random Test Data

- Make an alphabet string
- Make a new method to generate a random compilation of letters of varying lengths
	- Inside this method, set an empty string to a variable, name it word 
	- Set a variable to determine the length of word, name it randomLength
		- Combine built in methods that would generate a random number between 1-10
	- Make a for loop to run as long as variable, randomLength 
	- Set a variable to determine the index of alphabet string 
		- Combine built in methods that would generate a random number between 0-25
	- Whatever random number it generated, that would be the index in which you seek from alphabet
	- Add that letter to word, our empty string variable  
	- When loop stops, return variable word 
- Make a new method that generates a bunch of random words and put into an array
	- This method will take in an integer, which determines length of array 
	- Set a variable to an empty array, call it randomWords
	- Make a for loop that will run as long as the argument
		- Use .push to enter words in randomWords, input the first method you created as an argument 
	- When loop ends, return randomWords

*/
 
var alphabet = "abcdefghijklmnopqrstuvwxyz"

function generateWord() { 
	var word = "";
	var randomLength = Math.floor(Math.random() * 10) + 1;
	for (var i = 0;  i < randomLength; i ++) { 
		var index = Math.floor(Math.random() * 26)
		word += alphabet[index]
	}
	return word;
}


function generateRandomWords(int){ 
	var randomWords = []; 
	
	for (var i = 0; i < int; i++) { 
		randomWords.push(generateWord());
	}

	return randomWords
}

//DRIVER CODE 
// for (var i = 0; i < 10; i++){ 
// 	randomArray = generateRandomWords(3);
// 	console.log(randomArray);
// 	console.log(findLongest(randomArray));
// }
