class Portfolio < ApplicationRecord
    validates :name, :presence => true, :uniqueness => {:scope => :user_id}
    
    
    has_many :currencies
	has_many :users, through: :currencies
end
