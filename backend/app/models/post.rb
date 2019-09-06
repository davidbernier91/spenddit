class Post < ApplicationRecord
  # belongs_to :user, class_name: "User", foreign_key: "user_id"
  belongs_to :user
  has_many :comments
end
