class Profile

	attr_reader :name, :twitter
	@@contact = []

	def initialize(attributes)
		@name = attributes[:name]
		@twitter = []
	end

	def Profile.all
		@@contact.sort_by! { |contact| contact.name.capitalize }
	end

	def save
		@@contact << self
	end

	def add_twitter(twitter)
		@twitter << twitter
	end

end
