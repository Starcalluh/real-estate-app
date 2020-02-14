Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get('/home', {to: 'listing#get_listings'})
  post('/login', { to: 'users#login' })
  post('/signup', { to: 'users#signup'})
  # post('/liked', { to: 'likes#likes'})
  # post('/contact', {to: 'contact#create'})
  post('/likes', {to: 'likes#create'})
  get('/My-Likes', {to: 'likes#usersLikes'})
  get('/delete/:id', {to: 'likes#delete'})
  post('/contact', {to: 'contacts#create'})
  resources :users
  resources :listings
  resources :likes
  resources :contacts
end
