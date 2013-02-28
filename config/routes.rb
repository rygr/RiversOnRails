RiversOnRails::Application.routes.draw do
  root to: "home#index"
  match ":id" => "home#view"
end
