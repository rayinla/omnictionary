class Clothe
	attr_reader :name, :type
	def initialize(args)
          @name = args.fetch(:name,"none")
          @type = args.fetch(:type,"none")
	end
end
