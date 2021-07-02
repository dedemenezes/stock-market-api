require "rails_helper"

RSpec.describe Bearer, :type => :model do
  context 'create instance:' do 
    
    it 'name cannot be blank - validation error' do 
      expect { Bearer.create!(name: "", user: User.first) }.to raise_error(ActiveRecord::RecordInvalid)  
    end
    
    it 'User cannot be blank - validation error' do 
      expect { Bearer.create!(name: "PadoPado") }.to raise_error(ActiveRecord::RecordInvalid)  
    end
    
    it 'Must be valid with name and user' do
      expect { Bearer.create!(name: "PadoPado", user: User.first) }.to raise_error(ActiveRecord::RecordInvalid)  
    end
  end

end

# validates :name, :user, presence: true
# validates :name, uniqueness: true