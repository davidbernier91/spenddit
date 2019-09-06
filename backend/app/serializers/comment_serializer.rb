class CommentSerializer < ActiveModel::Serializer
  attributes :id, :username, :content, :score, :created_at

  def username
    object.user.username
  end
end
