class PostsController < ApplicationController

def index
	@posts = Post.all
	# render :index
end

	def new
    # render :new
	end

	def create
		# strong params is just a nice way of making sure someone isn't setting param values 
		# that you don't want them to be setting.
		post = params.require(:post).permit(:title, :author, :description)
	  Post.create(post)
	  redirect_to "/posts"
	end

 	def show
		id = params[:id]
		@post = Post.find(id)
	end

end