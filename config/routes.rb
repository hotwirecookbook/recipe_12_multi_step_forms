Rails.application.routes.draw do
	root "onboarding/developer_information#new"

  namespace :onboarding do
    resources :developer_information, only: %i[new create]
    resources :developer_skills, only: %i[new create]
    resources :developer_preferences, only: %i[new create]
  end

  resources :developers, only: %i[show]
end