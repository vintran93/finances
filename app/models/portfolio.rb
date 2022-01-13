class Portfolio < ApplicationRecord
    validates_uniqueness_of :name, scope: :user_id
    validates :name, presence: true
    
    has_many :currencies
	has_many :users, through: :currencies
end

# https://boringrails.com/tips/rails-unique-scope