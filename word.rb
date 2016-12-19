class Word
	attr_reader :word, :type, :synonym
	def initialize(args)
		@word = args.fetch(:word,"none")
		@type = args.fetch(:type,"none")
		@synonym = args.fetch(:synonym,"none")
	end
end