Rails.application.routes.draw do

  devise_for :admins, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
  }
  namespace :admin do
   get 'homes', to: 'homes#top'
  end

  scope module: :public do
   devise_for :customers, skip: [:passwords], controllers: {
   registrations: "public/registrations",
   sessions: 'public/sessions'
   }
   
   root to: "homes#top"
  
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
