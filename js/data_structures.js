var colors = ["blue", "purple", "pink", "gold"];
var names = ["Leslie Knope", "April Ludgate", "Ron Swanson", "Lil Sebastian"];

colors.push("forest green");
names.push("Andy Dwyer"); 

//console.log(colors);
//console.log(names);

function assignColorToName(arr, arr2){ 
	var parksAndRec = {};

	if (arr.length == arr2.length){ 
		for (var i = 0; i < arr.length; i++){ 
			parksAndRec[arr[i]] = arr2[i];
		}
	}
	return parksAndRec;
}

console.log(assignColorToName(names, colors));