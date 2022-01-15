# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
Ruby '2.6.1'
* System dependencies
  bootsnap (>= 1.4.4)
  bootstrap-sass (~> 3.4, >= 3.4.1)
  capybara (>= 3.26)
  devise (~> 4.8, >= 4.8.1)
  jbuilder (~> 2.7)
  jquery-rails
  json
  listen (~> 3.3)
  net-http
  puma (~> 5.0)
  rack-mini-profiler (~> 2.0)
  rails (~> 6.1.4, >= 6.1.4.1)
  rename
  sass-rails (>= 6)
  selenium-webdriver
  spring
  sqlite3 (~> 1.4)
  stock_quote (~> 3.0.0)
  turbolinks (~> 5)
  tzinfo-data
  web-console (>= 4.1.0)
  webdrivers
  webpacker (~> 5.0)

* Configuration
Using the devise gem
paste config.action_mailer.default_url_options = { host: 'localhost', port: 3000 } into the development.rb file

* Database creation
rails generate migration "model name"

* Database initialization
rails db:migrate

* How to run the test suite
rails s

* Services (job queues, cache servers, search engines, etc.)
Stock and Crypto market APIs

* Specs
 x Using Ruby on Rails for the project

 x Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    user have many currencies, portfolios have many currencies
 x Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    currency belongs to a user and a portfolio
 x Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    portfolios and users have many users/portfolios through currencies
 x Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    has_many :through associations for portfolio and user models
 x The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    currencies have a name, amount_owned, price_per and user_id
 x Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    validations helpers on the models
 x Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    .where, index pages
 x Include signup
    devise gem
 x Include login
    devise gem
 x Include logout
    devise gem
 x Include third party signup/login (how e.g. Devise/OmniAuth)
    devise gem
 x Include nested resource show or index (URL e.g. users/2/recipes)
    show and index pages
 x Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    new and partial 
 x Include form display of validation errors (form URL e.g. /recipes/new)
Confirm:

 x The application is pret ty DRY
 x Limited logic in controllers
 x Views use helper methods if appropriate
 x Views use partials if appropriate