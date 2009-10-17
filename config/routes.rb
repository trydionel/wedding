ActionController::Routing::Routes.draw do |map|
  map.signup 'signup', :controller => 'users', :action => 'new'
  map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'
  map.login 'login', :controller => 'user_sessions', :action => 'new'
  map.resources :user_sessions

  map.resources :users
  map.with_options :has_many => :comments, :shallow => true do |commentable|
    commentable.resources :articles, :only => [:index, :show]
    commentable.resources :photos, :only => [:index, :show, :new]
    commentable.resources :registries, :only => [:index, :show]
  end
  map.resources :pages, :controller => "StaticPages"
  map.resources :rsvps

  map.namespace :admin do |admin|
    admin.resources :articles, :only => [:new, :create, :edit, :update, :destroy]
    admin.resources :photos
  end
  
  map.root :controller => 'articles'
end
