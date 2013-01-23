LatexTutorial::Application.routes.draw do

  resources :lessons do
    member do
      post :check
    end
  end

  root :to => "lessons#index"
end
