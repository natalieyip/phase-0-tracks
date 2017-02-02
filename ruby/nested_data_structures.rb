bachelorette_party = {
	first_half: { 
		location: "Penthouse Suite",
		food: [
			"Double Decker Sliders", 
			"Pecan Pies",
			"Bacon Wrapped Hot Dogs", 
			"Goat Meat"
		],  
		stripper: "Paul the Pool Boy", 
		activities: [
			"knitting",
			"reading"
		],
		party_favors: { 
			lollipops: 20,
			knitting_needles: 5
		}
		}, 
	second_half: {
		location: "Ocean", 
		food: [
			"Wine",
			"Cheese"
		],
		stripper: "Magic Tatum",
		activities: [
			"mechanical bull",
			"yoga",
			"leap frog"
		],
		party_favors: { 
			candy_bracelets: 15,
			yoga_mats: 3
		}
	}
}

bachelorette_party[:first_half][:food][1]
#"Pecan Pies"

bachelorette_party[:second_half][:party_favors][:candy_bracelets]
#15

bachelorette_party[:first_half][:stripper]
#"Paul the Pool Boy"

bachelorette_party[:first_half][:food]
# ["Double Decker Sliders", "Pecan Pies", "Bacon Wrapped Hot Dogs", "Goat Meat"]

bachelorette_party[:second_half][:party_favors][:beach_balls] = 100
# :party_favors=>{:candy_bracelets=>15, :yoga_mats=>3, :beach_balls=>100}

bachelorette_party[:second_half][:stripper].prepend("Channing ")
# "Channing Magic Tatum"

bachelorette_party[:first_half][:activities].pop
bachelorette_party[:first_half][:activities].push("eating")
# ["knitting", "eating"]