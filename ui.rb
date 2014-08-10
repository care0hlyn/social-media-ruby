require './lib/profile'
require './lib/twitter'
require './lib/github'

@contact

def main_menu
	puts "\n\n--- Social Media Contact List ---\n\n"

	puts "Press '1' to enter new contact."
	puts "Press '2' to list contact(s)."
	puts "Press 'x' to exit program."

	case user_decision = gets.chomp
	when '1'
		new_contact
	when '2'
		list_contact
	when 'x'
		puts "Goodbye, Smalls."
		exit
	else
		puts "Invalid."
	end
	main_menu
end

def new_contact
	puts "Enter Name:"
	user_name = gets.chomp
	@contact = Profile.new({:name => user_name})
	@contact.save

	puts "Enter #{@contact.name}'s Twitter Name:"
	user_twitter = gets.chomp
	twitter = Twitter.new(user_twitter)
	@contact.add_twitter(twitter)
	twitter.save

	puts "\nHello #{@contact.name}, your Twitter username is @ #{twitter.twitter}."

	puts "\n\nPress '1' to add another Twitter username to #{@contact.name}."
	puts "Press '2' to add a Github profile to #{@contact.name}"
	puts "Press '3' to exit the program.\n\n"

	case user_decision = gets.chomp
	when '1'
		new_twitter
	when '2'
		add_github
	when '3'
		puts "You're killing me, Smalls."
		main_menu
	else
		puts "Invalid."
		new_contact
	end
	main_menu
end

def new_twitter
	puts "Enter another Twitter username:"
	user_twitter = gets.chomp
	new_twitter = Twitter.new(user_twitter)
	puts "@ #{user_twitter} has been added to #{@contact.name}"
	main_menu
end

def add_github
	puts "Enter your Github account:"
	user_github = gets.chomp
	github = Github.new(user_github)
	github.save
	@contact.add_github(github)
	puts "#{github.github} has been added to #{@contact.name}"
	main_menu
end

def list_contact
	puts "\n\n---Contact List ---"
	puts "Contact, Twitter & Github:\n\n"
	Profile.all.each_with_index do |contact, index|
		puts "#{index+1}. #{contact.name}"
		contact.twitter.each do |twitter|
			puts "Twitter: @ #{twitter.twitter}"
		contact.github.each do |github|
			puts "Github: #{github.github}"
		end
		end
	end
end




main_menu