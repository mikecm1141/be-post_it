module Types
  class PostType < BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :body, String, null: false
    field :topic_id, ID, null: false
    field :user_id, ID, null: false
  end
end
