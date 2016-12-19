module View
	def self.print_data_by_type(data, type)
		data.each do |item|
			if item.type == type 
				puts " "
				puts "--#{item.name}"
			end
		end
	end

	def self.print_data_by_note(data, type)
		data.each do |item|
			if item.act == type 
				puts " "
				puts "--#{item.note}"
				puts " "
			end
		end
	end

	def self.print_words(data, type)
		data.each do |item|
			if item.type == type
				puts " "
				puts "--#{item.word} : #{item.synonym}"
			elsif item.synonym == type
				puts " "
				puts "--#{item.word}"
			end
		end
	end

	def self.display_banner(file)
		if file == 'clothes.csv'
			puts <<-CLOTHES
			========================================================
			search clothes by: top, pants, shoe, jacket, coat, fabric
			=========================================================
			CLOTHES
		elsif file == 'furniture.csv'
			puts <<-FURNITURE
			=================================================
			search furniture by: couch
			==================================================
			FURNITURE
		elsif file == 'words.csv'
			puts <<-WORDS
	  	 	===============================================================
	  	 	search words by: adv,adj,verb,idiom,slang,noun
	  	 	OR
	  	 	search words by: sad,amazed,amazing,sarcasm,negative,smart,work
	  	 	================================================================
	  	 	WORDS
	  	 end
	end		
end

