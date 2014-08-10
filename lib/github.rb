class Github

	attr_reader :github
	@@github = []

	def initialize(github)
		@github = github
	end

	def Github.all
		@@github
	end

	def save
		@@github << self
	end

end
