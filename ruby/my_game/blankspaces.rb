
class Blankspaces 

  attr_accessor :secret_word, :guess_count, :word_being_guess
	
  def initialize(secret_word)
    @secret_word = secret_word
    @guess_count = 0
    @word_being_guess = []
  end

  def blanks 
    secret_word.length.times { word_being_guess << "_ "}
    word_being_guess.join
  end 

  def guess_right_letter(letter)
    if @secret_word.index(letter) != nil #got something right 
       @word_being_guess.delete_at(@secret_word.index(letter))
       @word_being_guess.insert(@secret_word.index(letter), letter)
       p @word_being_guess.join #Q: When I change this to puts, output on the screen becomes "Sorry Try Again" instead of "Grats" but it still works. 
    end
  end 

  def guess_wrong_letter(letter)
    @guess_count += 1 
  end 

end


#user interface 
puts "User 1: Please enter secret word: "
secret_word = gets.chomp 
game = Blankspaces.new(secret_word)

p game.blanks 

puts "User 2: Please start guessing the word."
  
while game.guess_count < game.secret_word.length 
  user_guess = gets.chomp 

  if game.guess_right_letter(user_guess)
    break if game.word_being_guess.join == secret_word
    puts "Great, you got one! Guess again."
  elsif game.guess_wrong_letter(user_guess)
    puts "Sorry try again."
  end 
end 

if game.word_being_guess.join  == secret_word
  puts "What a smartie!"
else 
  puts "Darn, the word was #{secret_word}!"
end

