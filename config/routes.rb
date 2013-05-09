Smartclient::Application.routes.draw do  
  root to: 'smartclient#index'
  get 'smartclient/fetch'  
end
