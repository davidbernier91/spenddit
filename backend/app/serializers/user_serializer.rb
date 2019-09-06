class UserSerializer < ActiveModel::Serializer
    attributes :username
  
    has_many :comments, :posts
  
    # def username
    #   object.author.username
    # end
  end
