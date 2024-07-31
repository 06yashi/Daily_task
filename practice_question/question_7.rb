# 7. **Flow Control - Guessing Game:** Create a class called "GuessingGame" that allows the user to guess a randomly generated number. Implement flow control to provide hints to the user (e.g., "higher" or "lower") based on their guesses. Display an appropriate message when the user guesses the correct number.

# class Gueesnumber
class GuessingGame
  def initialize(target_number)
    @target_number = target_number
  end

  def start_game
    loop do
      print 'Enter your guess: '
      guess = gets.chomp.to_i

      case guess
      when guess < @target_number
        puts 'Your guess is too low. Try again!'
      when guess > @target_number
        puts 'Your guess is too high. Try again!'
      else
        puts 'Congratulations! You guessed the right number!' 
        break
      end
    end
  end
end
target_number = rand(1..10)
game = GuessingGame.new(target_number)
game.start_game
