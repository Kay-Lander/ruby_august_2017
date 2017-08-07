def guess_number myGuess
  number = 25
  if myGuess == 25
    puts "you is right"
  elsif myGuess < 25
    puts "Guess was too low"
  elsif myGuess > 25
    puts "Guess was too high"
  end


end

guess_number(28)

guess_number(8)

guess_number(25)
