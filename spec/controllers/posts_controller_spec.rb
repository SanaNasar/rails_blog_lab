require "rails_helper"

RSpec.describe PostsController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the posts into @posts" do
      post1, post2 = Post.create!, Post.create!
      get :index

      expect(assigns(:posts)).to match_array([post1, post2])
    end
  end
end


#   # Test for the new page 
#   describe "GET #new" do
#     it "responds successfully with an HTTP 200 status code" do
#     get :new
#     expect(response).to be_success
#     expect(response).to have_http_status(200)
#     end
#   end

#     # part 2
#     it "renders the new template" do
#       get :new
#       expect(response).to render_template("new")
#     end

#     # part 3
#     it "should create a new post" do
#       # post1, post2 = Post.create!, Post.create!
#       get :new

#       # expect(assigns(:posts)).to match_array([post1, post2])
#     end

# # To test edit create a new post in the DB and then expect
  
#   describe "GET #edit" do
#     it "should not be dumb edit" do
#     myPost = Post.create()
#       get :edit, :id => myPost.id
#       expect(response).to be_success
#       # expect(response).to have_http_status(200)
#     end
#   end

