class TagsController < ApplicationController

def index
	# @tags = Tag.all
	# render :index
	@all_tags = Tag.all.select do |tag|
		tag.posts.length > 0
end

def show
	# id = params[:id]
	# @tag = Tag.find(id)
	@tag = Tag.find_by_id(params[:id])

end

# def destroy
	
	
# end






end