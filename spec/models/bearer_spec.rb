require "rails_helper"
require 'pry-byebug'

# RSpec.describe Bearer, :type => :model do
#   context 'create instance:' do 
#     it 'name cannot be blank - validation error' do 
#       expect { Bearer.create!(name: "", user: User.first) }.to raise_error(ActiveRecord::RecordInvalid)  
#     end
#     
#     it 'User cannot be blank - validation error' do 
#       expect { Bearer.create!(name: "PadoPado") }.to raise_error(ActiveRecord::RecordInvalid)  
#     end
#     
#     it 'Must be valid with name and user' do
#       expect { Bearer.create!(name: "PadoPado", user: User.first) }.to raise_error(ActiveRecord::RecordInvalid)  
#     end
#   end
#   
# end

RSpec.describe Bearer, type: :model do
  context 'validations' do
    User.create!(email: "testeemail@rspec.com", password: 123456)
    it 'accepts a valid bearer' do
      bearer = Bearer.new(name: 'Flavito', user: User.first)
      binding.pry
      expect(bearer.save).to be(true)
    end

    it 'validates presence of name' do
      bearer = Bearer.new(user: User.first)

      expect(bearer.save).to be(false)
    end

    it 'validates presence of user' do
      bearer = Bearer.new(name: 'A decent name')

      expect(bearer.save).to be(false)
    end
  end
end

# validates :name, :user, presence: true
# validates :name, uniqueness: true