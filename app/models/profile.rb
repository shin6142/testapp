class Profile < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :name, presence: true
  validates :nationallity, presence: true
  validates :text, presence: true
end
