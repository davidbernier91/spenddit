class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :score, :views, :created_at, :user

  has_many :comments


  # def username
  #   object.user.username
  # end
end
# :author_name