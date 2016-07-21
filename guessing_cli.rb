def prompt
	puts "Guess a number between 1 and 6."
	gets.chomp
end

def generate_num
	rand(6)
end

def bye_bye
	puts "Byeeeeeeeeee!"
	abort

end

def run_guessing_game

	mystery_num = generate_num
	guess = ""

	until guess == mystery_num

		guess = prompt

		if guess.to_i == mystery_num
			puts "Good job!"
			break

		elsif guess.to_i != 6 && guess.to_i < 0
			puts "The computer guessed #{mystery_num}."

		elsif guess == "exit"
			bye_bye

		else
			puts "You aren't playing it right!!!"
		end



	end

end

# run_guessing_game