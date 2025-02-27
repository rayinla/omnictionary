# Controller will define the operation of reading inputs and producing outputs from CSV file
class Controller
  def initialize
	@view = View
  end
	
  def run	  	
  	outer_exit = false
  	until outer_exit == true
  	exit = false 
  	puts "OMNI: Choose options [find,add]"
  	command = gets.chomp
	  	if command == "find"
	  	 	until exit == true
	  	 		inner_exit = false
	  	 		puts "OMNI: Welcome to the Omnictionary. [clothes,words,furniture]"
	  	 		option = STDIN.gets.chomp
	  	 		if option == 'exit'
		  	 		exit = true
		  	 	elsif option == '-clothes' #CLOTHES		  	
		  	 		until inner_exit == true
			  	 		new_file = "clothes.csv"
			  	 		@view.display_banner(new_file)
		  	 			new_option = STDIN.gets.chomp
		  	 			data = Main.new(new_file)
				  	 	clothes = data.clothes
				  	 	@view.print_data_by_type(clothes, new_option)
			  	 		if new_option == 'exit'
			  	 			inner_exit = true
			  	 		end
			  	 	end
			  	 elsif option == '-words'		  	 	  
		  	 		until inner_exit == true
			  	 		new_file = "words.csv"
			  	 		@view.display_banner(new_file)
		  	 			new_option = STDIN.gets.chomp
		  	 			data = Main.new(new_file)
				  	 	words = data.words
				  	 	@view.print_words(words, new_option)	
				  	 	if new_option == 'exit'
				  	 		inner_exit = true
				  	 	end
			  	 	end
			  	 elsif option == '-notes'		  	 	  
		  	 		until inner_exit == true
			  	 		new_file = "notes.csv"
			  	 		@view.display_banner(new_file)
		  	 			new_option = STDIN.gets.chomp
		  	 			data = Main.new(new_file)
				  	 	notes = data.notes
				  	 	@view.print_data_by_note(notes, new_option)	
				  	 	if new_option == 'exit'
				  	 		inner_exit = true
				  	 	end
			  	 	end		 
		  	 	elsif option == '-furniture' #FURNITURE
		  	 		until inner_exit == true
			  	 		new_file = "furniture.csv"
		  	 			@view.display_banner(new_file)
		  	 			new_option = STDIN.gets.chomp
			  	 		data = Main.new(new_file)
				  	 	furniture = data.furniture
				  	 	@view.print_data_by_type(furniture, new_option)	 	
				  	 	if new_option == 'exit'
				  	 		inner_exit = true
				  	 	end
			  	 	end	  	
		  	 	end
		  	 end
	  		
		elsif command == "add"	
			until exit == true
				puts "what do you want to add to?"
				option_one = STDIN.gets.chomp
				if option_one == 'exit'
					exit = true
				else
					puts "What is the name/word?"
					option_two = STDIN.gets.chomp
					puts "What is the type/part of speech?"
					option_three = STDIN.gets.chomp
					puts "What is the synonym?"
					option_four = STDIN.gets.chomp
					file = option_one.gsub!(/$/,'.csv')
					CSVWriter.write(file,option_two,option_three,option_four) 
				end
			end

	  	elsif command == "exit"
	  		outer_exit = true
	  	 end
	  end
   end
end

