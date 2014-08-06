require './lib/profile'
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

	puts "Enter Twitter Name:"
	user_twitter = gets.chomp

	puts "\nHello #{user_name}, your Twitter username is @#{user_twitter}."

	puts "\n+ Another Twitter account? Y or N."

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


	


# end

main_menu