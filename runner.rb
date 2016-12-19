require 'csv'
require_relative 'csv_writer'
require_relative 'csv_parse'
require_relative 'clothe'
require_relative 'furniture'
require_relative 'word'
require_relative 'controller'
require_relative 'view'
require_relative 'main'
require_relative 'note'



	controller = Controller.new
	controller.run




# puts "Welcome to your writer's interface! What do you want to access?"
# 	file = STDIN.gets.chomp
# 		if file == 'clothes'
# 			puts "You only have access to #{file}.csv"
# 			controller = Controller.new('clothes.csv')
# 			controller.run
# 		elsif file == 'furniture'
# 			puts "You only have access to #{file}.csv"
# 			controller = Controller.new('furniture.csv')
# 			controller.run
# 		elsif file == 'words'
# 			puts "You only have access to #{file}.csv"
# 			controller = Controller.new('words.csv')
# 			controller.run
# 		elsif file == 'exit'
# 		 	last_exit = true
# 		end
	

# controller = Controller.new('words.csv')
# controller.run
# p CSVParser.parse('furniture.csv')