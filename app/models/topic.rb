class Topic < ApplicationRecord
  validates :title, :description, presence: true
end
