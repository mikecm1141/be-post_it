class Post < ApplicationRecord
  belongs_to :topic
  belongs_to :user

  validates :title, :body, presence: true
end
