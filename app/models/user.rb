class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :currencies
         has_many :portfolios, through: :currencies
end

#<% @currencies.each do |currency| %>
#  <% if currency.user_id == current_user.id %>
#   <% if currency.symbol == "" %>
#      <% @blank = 'N/A' %>
#   <% elsif currency.symbol %>
 #     <% @currencies = StockQuote::Stock.quote(currency.symbol) %>
 #     <% if !currency.symbol %>
 #         <% @error = "N/A" %>
#      <% end %>
#   <% end %>
#  <% end %>
#<% end %>