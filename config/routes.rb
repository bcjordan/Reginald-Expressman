Go::Application.routes.draw do

  # Match all URLs
  match ':shortname' => 'namedaliases#go', :as => :shortname

  resources :patternmatches
  resources :namedaliases

end
