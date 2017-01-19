Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/name_game", to: "games#name_game_method"
  get "/guess_a_number", to: "games#guess_number_method"
  get "/counter", to: "games#counter_method"
end
