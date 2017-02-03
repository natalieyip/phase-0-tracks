#Define a method that searches for an integer within an array 
#The method will return the index of the integer or nil if the integer does not exist 

array = [32, 1, 4, 90, 38, 7]

def search_array(array, integer)
	index = 0 
	search_results = nil
	array.each do |x|
		if x == integer
			search_results = index 
		break
		end
	index += 1
	end
	return search_results 
end

p search_array(array, 10)

p search_array(array, 7)