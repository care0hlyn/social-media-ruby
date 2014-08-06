class Twitter

	attr_reader :twitter

	@@twitter = []

	def initialize(twitter)
		@twitter = twitter
	end

	def Twitter.all
		@@twitter
	end

	def save
		@@twitter << self
	end

end