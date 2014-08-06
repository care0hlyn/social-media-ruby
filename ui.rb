require './lib/profile'
require './lib/twitter'
require './lib/github'

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
	contact = Profile.new({:name => user_name})
	contact.save

	puts "Enter #{contact.name}'s Twitter Name:"
	user_twitter = gets.chomp
	twitter = Twitter.new(user_twitter)
	contact.add_twitter(twitter)
	twitter.save

	puts "\nHello #{contact.name}, your Twitter username is @ #{twitter.twitter}."

	puts "\n+ Another Twitter username for this contact? Y or N."

	case user_decision = gets.chomp
	when 'y'
		new_twitter
	when 'n'
		puts "You're killing me, Smalls."
		main_menu
	else
		puts "Invalid."
	end

	main_menu
end

def new_twitter

	puts "Enter another Twitter username:"
	user_twitter = gets.chomp
	new_twitter = Twitter.new(user_twitter)
	new_twitter.add_twitter

	puts "@#{user_twitter} has been added."

end


	


# end

main_menu