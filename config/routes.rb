# config/routes.rb
Rails.application.routes.draw do
  resources :pdf_documents, only: [:index, :new, :create]
  root 'pdf_documents#index'
end
