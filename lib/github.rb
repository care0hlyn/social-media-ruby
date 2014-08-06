class Github
	attr_reader :username

	@@github = []

	def initialize(username)
		@username = username
	end

end