require 'rspec'
require 'profile'
require 'username'

describe Profile do
	it 'initalizes the name of contact with an empty array for their Twitter username' do
		test_contact = Profile.new({:name => "Carolyn Huynh"})
		test_contact.should be_an_instance_of Profile
	end

	it 'shows the name of the contact' do
		test_contact = Profile.new({:name => "Carolyn Huynh"})
		expect(test_contact.name).to eq "Carolyn Huynh"
	end
end