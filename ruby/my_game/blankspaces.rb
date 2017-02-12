
class Blankspaces 

  attr_accessor :secret_word, :guess_count, :word_being_guess, :letters_guessed 
	
  def initialize(secret_word)
    @secret_word = secret_word
    @guess_count = 0
    @word_being_guess = []
    @letters_guessed = [] 
  end

  def blanks 
    secret_word.length.times { word_being_guess << "_ "}
    word_being_guess.join
  end 

  def guess_right_letter(letter)
    if secret_word.index(letter) != nil #got something right 
       word_being_guess.delete_at(secret_word.index(letter))
       word_being_guess.insert(secret_word.index(letter), letter)
    end
  end 

  def guess_wrong_letter(letter)
    @guess_count += 1 #Q Why do we need a @ for this variable and not others in the other methods?
  end 

  def repeat_letters(letter)
    letters_guessed.index(letter) == nil
  end 

end

#user interface 
puts "User 1: Please enter secret word: "
secret_word = gets.chomp 
game = Blankspaces.new(secret_word)

puts game.blanks 

puts "User 2: Please start guessing the word."

while game.guess_count < game.secret_word.length 
  user_guess = gets.chomp 
  
  if !game.repeat_letters(user_guess)
    puts "You already guessed this"
  elsif game.guess_right_letter(user_guess)
    game.letters_guessed << user_guess
    puts game.word_being_guess.join
    break if game.word_being_guess.join == secret_word
    puts "Great, you got one! Guess again."
  elsif game.guess_wrong_letter(user_guess)
    game.letters_guessed << user_guess
    puts "Sorry try again."
  end 
end 

if game.word_being_guess.join  == secret_word
  puts "What a smartie!"
else 
  puts "Darn, the word was #{secret_word}!"
end

