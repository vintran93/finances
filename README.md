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
 
Ruby on Rails – Project Checklist 
 
 
1. -- Use the Ruby on Rails framework. 
 
2. Your models must include at least:  
 -- one has_many,  
 -- one belongs_to, 
 -- two has_many :through relationships 
 -- Include a many-to-many relationship implemented with has_many :through associations. The join 
table must include a user-submittable attribute — that is to say, some attribute other than its foreign 
keys that can be submitted by the app's user 
 
3.  -- Your models must include reasonable validations for the simple attributes. You don't need to add 
every possible validation or duplicates, such as presence and a minimum length, but the models should 
defend against invalid data. 
 
4.  -- You must include at least one class level ActiveRecord scope method. Your scope method must 
be chainable, meaning that you must use ActiveRecord Query methods within it (such 
as .where and .order) rather than native ruby methods (such as #find_all or #sort). 
 
 
5.  -- Your application must provide standard user authentication, including signup, login, logout, and 
passwords. 
 
6.  -- Your authentication system must also allow login from some other service. Facebook, Twitter, 
Foursquare, Github, etc... 
 
 
7.  -- You must include and make use of a nested resource with the appropriate RESTful URLs. 
 -- You must include a nested new route with form that relates to the parent resource 
 -- You must include a nested index or show route 
 
8.  -- Your forms should correctly display validation errors. 
 -- Your fields should be enclosed within a fields_with_errors class 
 -- Error messages describing the validation failures must be present within the view. 
 
9. Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app. 
 -- Logic present in your controllers should be encapsulated as methods in your models. 
 -- Your views should use helper methods and partials when appropriate. 
 -- Follow patterns in the Rails Style Guide and the Ruby Style Guide. 
 
10.  -- Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up 
and running quickly, but learning a lot is not one of the benefits of scaffolding. 