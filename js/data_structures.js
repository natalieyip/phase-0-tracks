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

function carConstructor(model, make, year) {
	this.model = model; 
	this.make = make; 
	this.year = year; 

	this.turnOnRadio = function() {console.log("..Turning on radio..");};

}

var carOne = new carConstructor("Honda", "Civic", 2013);

carOne.turnOnRadio();
console.log(carOne)

var carTwo = new carConstructor("Lamborgini", "Tesla", 2030);
carTwo.turnOnRadio(); 
console.log(carTwo)
