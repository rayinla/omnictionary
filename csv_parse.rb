module CSVParser
	def self.parse(filename)
		rows = []
		CSV.foreach(filename, :headers => true, :header_converters => :symbol) do |row|
			rows << row.to_h
		end
		rows
	end
end