Rails.application.routes.draw do
  
  root to: 'pages#home'
  get '/about' => 'pages#about', as: 'about_path'
  get '/contact' => 'pages#contact', as: 'contact_path'
  get '/services/gcp' => 'pages#gcp', as: 'gcp_path'
  get '/services/iit' => 'pages#iit', as: 'iit_path'
  get '/services/glp' => 'pages#glp', as: 'glp_path'
  get '/services/part11' => 'pages#part11', as: 'part11_path'
  get '/services/data' => 'pages#data', as: 'data_path'
  get '/services/reporting' => 'pages#reporting', as: 'reporting_path'
  get '/services/strategic' => 'pages#strategic', as: 'strategic_path'

end
