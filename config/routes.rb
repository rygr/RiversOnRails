RiversOnRails::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root to: "home#index"

  root to: "river#index"
  match ":id" => "river#index"
end
