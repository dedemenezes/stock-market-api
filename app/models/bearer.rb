class Bearer < ApplicationRecord
  belongs_to :user
  has_many :stocks

  validates :name, :user, presence: true
  validates :name, uniqueness: true

  after_commit :async_update, on: [:home]

  private

  def async_update
    UpdateJob.perform_later(@bearer.id)
  end
end
