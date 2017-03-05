$(document).ready(function() {

  $("#button").click(function(){
        $("#puppy").fadeOut(1000, function() {
        	$(this).replaceWith("<h1><center>YOU KILLED PUPPEH</center></h1>");
        });
  });

 });

// function addBlueBorder() { 
// 	var photo = document.getElementById("test"); 
// 	photo.style.border = "4px solid blue"; 
// }

// var photo = document.getElementById("test"); 
// photo.addEventListener("click", addBlueBorder);

// $(document).ready(function() { 



// 
