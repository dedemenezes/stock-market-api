class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bearers
  has_many :stocks, through: :bearers#, source: :bearers_table_foreign_key_to_stocks_table
end
