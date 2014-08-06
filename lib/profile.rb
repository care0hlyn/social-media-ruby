class Profile

	attr_reader :name, :twitter
	@@contact = []

	def initialize(attributes)
		@name = attributes[:name]
		@twitter = []
	end

	def Profile.all
		@@contact
	end

	def save
		@@contact << self
	end

end
