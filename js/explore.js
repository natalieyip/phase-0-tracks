/*
PSEUDOCODE 

- Make a new variable and set it to an empty array 
- Iterate through each letter of the string argument
- With a for loop, we can increment counting down starting from the last letter
- Push or add each new letter to the empty array  
- Return the variable and use a join method to return the string

*/

function reverse(string) { 
	var reverseString = [];
	  for (var i = string.length; i >= 0; i--) {
  	  reverseString.push(string[i]);
  }
   return reverseString.join("");
} 

// DRIVER CODE 

console.log(reverse("Sit on a potato pan, Otees?"))

if (1 != 5) {
	console.log(reverse("desserts"))
}
else {
	console.log("That's not true!")
}
