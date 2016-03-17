# == Route Map
#
#            Prefix Verb   URI Pattern                                 Controller#Action
#     post_comments GET    /posts/:post_id/comments(.:format)          comments#index
#                   POST   /posts/:post_id/comments(.:format)          comments#create
#  new_post_comment GET    /posts/:post_id/comments/new(.:format)      comments#new
# edit_post_comment GET    /posts/:post_id/comments/:id/edit(.:format) comments#edit
#      post_comment GET    /posts/:post_id/comments/:id(.:format)      comments#show
#                   PATCH  /posts/:post_id/comments/:id(.:format)      comments#update
#                   PUT    /posts/:post_id/comments/:id(.:format)      comments#update
#                   DELETE /posts/:post_id/comments/:id(.:format)      comments#destroy
#             posts GET    /posts(.:format)                            posts#index
#                   POST   /posts(.:format)                            posts#create
#          new_post GET    /posts/new(.:format)                        posts#new
#         edit_post GET    /posts/:id/edit(.:format)                   posts#edit
#              post GET    /posts/:id(.:format)                        posts#show
#                   PATCH  /posts/:id(.:format)                        posts#update
#                   PUT    /posts/:id(.:format)                        posts#update
#                   DELETE /posts/:id(.:format)                        posts#destroy
#              root GET    /                                           posts#index
#             about GET    /about(.:format)                            pages#about
#

Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  root 'posts#index'

  get 'about', to: 'pages#about'

end
