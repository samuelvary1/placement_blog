Rails.application.routes.draw do
  get 'welcome/index'

  # creates the nested relationship of comments belonging to articles
  resources :articles do
    resources :comments
  end


  root 'welcome#index'
end