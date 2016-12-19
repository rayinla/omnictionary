class Note
	attr_reader :note, :act
	def initialize(args={})
		@note = args.fetch(:note, "none")
		@act = args.fetch(:act, "none")
	end 
end