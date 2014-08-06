class Github
	attr_reader :username

	@@github = []

	def initialize(username)
		@username = username
	end

	def Github.all
		@@github
	end

	def save
		@@github << self
	end

end
