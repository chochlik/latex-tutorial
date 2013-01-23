LatexTutorial::Application.routes.draw do

  resources :lessons, only: [:index, :show] do
    member do
      post :check
    end
  end

  root :to => "lessons#index"
end
