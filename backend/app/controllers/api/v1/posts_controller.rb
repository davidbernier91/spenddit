class Api::V1::PostsController < ApplicationController

  # GET /posts
  def index
    posts = Post.all

    render json: posts
  end

  # GET /posts/1
  def show
    render json: post
  end


  def up_vote
    post = Post.find(params[:id])

    if session_user
      post.update(score: post.score + 1)

      render json: post
    else 
      render json: {errors: "Please log in to up vote!"}
    end
  end

    # POST /posts
    def create
      post = Post.new(post_params)
  
      if post.save
        render json: post, status: :created, location: @post
      else
        render json: post.errors, status: :unprocessable_entity
      end
    end

  # def comment
  #   post = Post.find(params[:id])

  #   comment = Comment.create({
  #     content: params[:content],
  #     upvotes: 0,
  #     post: post,
  #     user: session_user
  #   })

  #   render json: comment
  # end
  private
  # Use callbacks to share common setup or constraints between actions.
  # def set_post
  #   @post = Post.find(params[:id])
  # end

  # Only allow a trusted parameter "white list" through.
  def post_params
    params.permit(:user_id, :title, :content, :score, :views)
  end
end
