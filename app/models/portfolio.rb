class Portfolio < ApplicationRecord
    validates :user_id, uniqueness: true
    
    has_many :currencies
	has_many :users, through: :currencies
end
