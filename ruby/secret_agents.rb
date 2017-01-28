def encrypt(string)
	index = 0
	while index < string.length 
		letter = string[index]
		print letter.next
		index += 1
	end  
end


def decrypt(string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	index = 0 
	while index < string.length 
 	newIndex = alphabet.index(string[index]) - 1
 	print alphabet[newIndex]
	index += 1
	end 
end 

decrypt("bcd")