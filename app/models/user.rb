class User < ApplicationRecord
  
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bearers
  has_many :stocks, through: :bearers
  has_one :client, dependent: :destroy

  #after_commit :async_update, on: [:home]
#
  #private
#
  #def async_update
  #  UpdateJob.perform_later(@bearer.id)
  #end
end
