module CSVWriter
	def self.write(filename,name, type,*synonym)
		CSV.open(filename, 'a') do |row|
			if synonym.join != ""
				join_synonym = synonym.join
				row << [name,type,join_synonym]
			else
				row << [name,type]
			end
		end
	end
end