Mailstar::Application.routes.draw do
  root to: 'feedbacks#new'
  
  resources :feedbacks
end
