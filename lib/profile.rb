class Profile

	attr_reader :name, :twitter, :github
	@@contact = []

	def initialize(attributes)
		@name = attributes[:name]
		@twitter = []
		@github = []
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

	def add_github(github)
		@github << github
	end

end
