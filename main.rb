class Main
	attr_reader :furniture, :clothes, :words, :notes
	def initialize(filename)
		@furniture = load_furniture(filename)
		@clothes = load_clothes(filename)
		@words = load_words(filename)
		@notes = load_notes(filename)
	end

	def load_furniture(filename)
		CSVParser.parse(filename).map {|furniture| Furniture.new(furniture)}
	end

	def load_clothes(filename) 
		CSVParser.parse(filename).map {|clothe| Clothe.new(clothe)}
	end

	def load_words(filename)
       CSVParser.parse(filename).map{|word| Word.new(word)}
	end

	def load_words(filename)
       CSVParser.parse(filename).map{|word| Word.new(word)}
	end


	def load_notes(filename)
       CSVParser.parse(filename).map{|word| Note.new(word)}
	end


	# def add_items(filename,name,type,*synonym)
	# 	CSVWriter.write(filename,name,type,synonym)
	# end
end