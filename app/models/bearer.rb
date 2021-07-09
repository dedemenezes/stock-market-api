class Bearer < ApplicationRecord
  belongs_to :user
  has_many :stocks

  validates :name, :user, presence: true
  validates :name, uniqueness: true

end
