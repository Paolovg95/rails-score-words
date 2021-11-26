Rails.application.routes.draw do
  root to: 'input#home', as: :home
  get 'score', to: 'input#score', as: :score
end
