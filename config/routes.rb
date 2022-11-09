Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'restaurants#index'
  resources :restaurants, exept: [:update, :destroy] do
    resources :reviews, only: [:create]
  end
end

# Routing / Controllers
# Asking yourself what routes you need is a very important step in your web-app building process.
# Routes should exactly mirror your product’s user stories. So  let’s define our minimal product here:

# A visitor can see the list of all restaurants.
# GET "restaurants"
# A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new"
# POST "restaurants"
# A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
# GET "restaurants/38"
# A visitor can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
# And that’s it!
# In our MVP, a visitor cannot update / delete any restaurant or review. This is the role of the
# admin (i.e. you) - as a developer you have the power to manipulate the DB from the rails console
# if you want to update / delete any record.

# We know it’s a pretty basic MVP, but we just need you to understand that each route is the
# embodiment of a user-story. Don’t just blindly write 7 CRUD routes for every model in your app.
# It’s the best way to get confused by your own product and forget what your MVP really is.

# Now, it’s time to implement all the routes you need to build this product!

# Hint: to handle the route GET "restaurants/38/reviews/new", you will have to use nested resources.
