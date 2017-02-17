/* Release 0: Find the Longest Phrase

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

console.log(findLongest(["long phrase","longest phrase","longer phrase"]))
