
def encrypt(string)
	index = 0
	newString = ""
	while index < string.length 
		letter = string[index]
		if letter == "z"
			newString += "a"
		else
			newString += letter.next
		end
		index += 1
	end  
	p newString
end
	

def decrypt(string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	newString = ""
	index = 0 
	while index < string.length 
 	newIndex = alphabet.index(string[index]) - 1
 	newString += alphabet[newIndex]
	index += 1
	end 
	p newString
end 

#Driver Code

#asks the user the decrypt or encrypt preference 
puts "Would you like to decrypt or encrypt your password?"
en_or_de = gets.chomp

#asks the user for their password 
puts "What is your password?" 
password = gets.chomp

#printing their result
if "#{en_or_de}" == "encrypt"
	puts "Your new password is " + encrypt("#{password}")
else 
	puts "Your new password is " + decrypt("#{password}")
end

decrypt(encrypt("swordfish"))
#It works because the order of evaluation causes  #swordfish to encrypt first, then decrypt.
