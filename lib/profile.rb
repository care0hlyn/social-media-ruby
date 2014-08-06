class Profile

	attr_reader :name, :twitter

	def initialize(attributes)
		@name = attributes[:name]
		@twitter = []
	end

end