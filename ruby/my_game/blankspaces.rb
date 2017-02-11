
class Blankspaces 

  attr_reader 
  attr_accessor :secret_word, :guess_count
	
  def initialize(secret_word)
    @secret_word = secret_word
    @guess_count = 0
  end

=begin
  def blanks 
    word_being_guess = []
    secret_word.length.times { word_being_guess << "_ "}
    word_being_guess.join
  end 


  def guess_letter(letter)
    if @secret_word.index(letter) != nil #got something right 
       @word_being_guess.delete_at(secret_word.index(letter))
       word_being_guess.insert(secret_word.index(letter), letter)
       word_being_guess.join
     else 
       guess_count += 1
    end
  end

  def last_message
  end 
=end 

end


#user interface 
p "User 1: Please enter secret word: "
secret_word = gets.chomp 
game = Blankspaces.new(secret_word)

word_being_guess = []

secret_word.length.times { word_being_guess << "_ "}

p "User 2: Please start guessing the word."
  
while game.guess_count < game.secret_word.length 
  user_guess = gets.chomp 
  
  if secret_word.index(user_guess) != nil #got something right 
    
     correct_guess = secret_word.index(user_guess) #this prints out number 
     word_being_guess.delete_at(correct_guess)
     word_being_guess.insert(correct_guess, user_guess)
     correct_so_far = word_being_guess.join
     puts correct_so_far
     
     break if correct_so_far == secret_word
     
     puts "Great, you got one! Guess again"
    
   else 
     
     puts "Nope try again"
     game.guess_count += 1
  end 
  
  
end 

if correct_so_far == secret_word
  puts "What a smartie!"
else 
  puts "Darn, the word was #{secret_word}!"
end


#having trouble converting my program into the class. 