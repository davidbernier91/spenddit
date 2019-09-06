class Api::V1::UsersController < ApplicationController
  def create
    # let's make a user using the username and password from the params
    user = User.new(
      username: params[:username],
      password: params[:password],
    )

    if user.save
      token = encode_token(user.id)
      render json: {user: user, token: token}
    else
      render json: {errors: user.errors.full_messages}
    end

  end
end


# post = Post.new(
#   user_id: params[:user_id],
#   title: params[:title],
#   cotnent: params[:cotnent],
#   score: params[:score],
#   views: params[:views],
# )