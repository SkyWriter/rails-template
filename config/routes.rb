RntdDatabase::Application.routes.draw do
  match '/click' => 'welcome#click', :via => :post
  root :to => 'welcome#index'
end
