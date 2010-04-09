ActionController::Routing::Routes.draw do |map|
  map.resources :articles
  map.root :controller => 'articles', :action => 'index'
end
