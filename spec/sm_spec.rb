require 'rspec'
require 'profile'
require 'username'

describe Profile do
	it 'initalizes the name of contact with an empty array' do
		test_contact = Profile.new({:name => "Carolyn Huynh"})
		test_contact.should be_an_instance_of Profile
	end
end