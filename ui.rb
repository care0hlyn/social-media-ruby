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
		puts "Goodbye, Alfred."
		exit
	else
		puts "Invalid."
	end
	

	main_menu

end


# 	puts "Enter Name:"
# 	user_name = gets.chomp

# 	puts "Enter Twitter Name:"
# 	user_twitter = gets.chomp

# 	puts "\n\nHello #{user_name}, your Twitter username is @#{user_twitter}."
	


# end

main_menu