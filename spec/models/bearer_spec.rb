require 'rails_helper'

RSpec.describe Bearer, type: :model do
  context 'Creating bearer instance' do 
    it 'name cannot be blank' do   #
      expect { Bearer.create!(name: "", user: User.first) }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end
  end
end

# validates :name, :user, presence: true
# validates :name, uniqueness: true