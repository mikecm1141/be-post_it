class Topic < ApplicationRecord
  has_many :posts

  validates :title, :description, presence: true
end
