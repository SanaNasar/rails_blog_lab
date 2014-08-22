Rails.application.routes.draw do


#   get 'comments/index'

#   get 'comments/edit'

#   get 'comments/show'

#   get 'comments/create'

#   # a get for the posts route
#   get '/posts', to: 'posts#index'

#     # a get page with a new form in posts
#   get '/posts/new', to: 'posts#new'

#   # a post route to handle the submitted post form
#   post '/posts', to: 'posts#create'

#   # a get route to show a paticular post
#   get '/posts/:id', to: 'posts#show'
 
#   #goes to the root index in the post controller
#   root 'posts#index'


# # Tags routes

#   # a get for the tags route
#   get '/tags', to: 'tags#index'

#   # a get page with a new tag
#   get '/tags/new', to: 'tags#new'

#   # a post route to handle the submitted tag
#   post '/tags', to: 'tags#create'

#   # a get route to show a paticular tag
#   get '/tags/:id', to: 'tags#show'


  root to: 'posts#index'
        ## Also just to keep it RESTful
        # Good practice
        # Add prefix to the routes using as: "some_prefix" syntax
        # GET route for the index

  resources :posts do
  resources :comments
  end



end