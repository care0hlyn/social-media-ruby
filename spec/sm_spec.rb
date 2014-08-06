require 'rspec'
require 'profile'
require 'username'

describe Profile do
	it 'initalizes the name of contact with an empty array for their Twitter username' do
		test_contact = Profile.new({:name => "Prez Obama"})
		test_contact.should be_an_instance_of Profile
	end

	it 'shows the name of the contact' do
		test_contact = Profile.new({:name => "Prez Obama"})
		expect(test_contact.name).to eq "Prez Obama"
	end

	it 'saves the user contact' do
		test_contact = Profile.new({:name => "Prez Obama"})
		test_contact1 = Profile.new({:name => "Rick Astley"})
		test_contact.save
		test_contact1.save
		expect(Profile.all).to eq [test_contact, test_contact1]
	end
end