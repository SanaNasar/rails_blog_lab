class CommentsController < ApplicationController
  
	def index
		post_id = params[:post_id]
		@post = Post.find(post_id)
		@comments = @post.comments
	end

	def new
		post_id = params[:post_id]
		@post= Post.find(post_id)
		@comment = @post.comments.new
	end

  def edit
  end

  def show
  end

  def create
  end
end
