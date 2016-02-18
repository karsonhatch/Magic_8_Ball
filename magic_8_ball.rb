@magic_ball = ["Yes.", "No.", "Maybe so.", "What? Are you retarded?", "Uhhh... No.", "Question unclear, try again.", "Well tickle my nips, looks like its a yes!",
 "Would you?", "Dude, no way.", "Bruh, totally!", "Yeah dude.", "Maybe, at best.", "Why are you dumb?", "Do you even lift bro?", "Unknown.", 
 "Hell no, bruh.", "Would you accept...no?", "Would you accept.... Yes?" ]

	def add_answer(array)
		puts "You've found the 'Add your own answer' feature!\nPlease insert your new answer!:"
		new_answer = gets.strip
		array << new_answer
		puts "Your custom answer has been added."
	end

def weiner(options)
	puts """
	Hello! Welcome to the answer machine!
	This is where you can find out your Future!
	Just type in a 'yes or 'no' Question!
	"""
	@answer = gets.strip
	if @answer.include?("add answer")
		add_answer(@magic_ball)
	elsif @answer[-1] != "?"
		puts "Thats not a question, bro."
	elsif @answer.include?("tea-pot")		
		puts "Did you just say tea-pot?! hecka yeah, you found the easteregg! Short and stout, nigguh!!"
	else	
		puts options.sample
	end
end

while(true)

	weiner(@magic_ball)

	puts "Would you like to ask another?: yes or no"
	user_option = gets.strip.downcase
	if user_option == "yes" 
		weiner(@magic_ball)
	elsif user_option == "no" 
		exit(0)
	else 
		puts "Invalid answer, try agian."
	end
end