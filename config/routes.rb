Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/name_game", to: "games#name_game_method"
  get "/guess_a_number/:guessed_number", to: "games#guess_number_method"
  get "/counter", to: "games#counter_method"

  get "/guess_form_url", to: "games#guess_form_method"
  post "/guess_form_result_url", to: "games#guess_form_result_method"
end
