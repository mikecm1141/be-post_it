module Types
  class QueryType < Types::BaseObject
    field :all_topics, [TopicType], null: false
    field :all_users, [UserType], null: false
    field :all_posts, [PostType], null: false

    def all_topics
      Topic.all
    end

    def all_users
      User.all
    end

    def all_posts
      Post.all
    end
  end
end
