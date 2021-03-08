Rails.application.routes.draw do
  resources :supervisors
  resources :service_staffs
  resources :rooms
  resources :monthly_expenses
  resources :members
  resources :guests
  resources :employees
  resources :hotels
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
