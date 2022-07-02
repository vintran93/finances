class Currency < ApplicationRecord
    validates :name, presence: true
    belongs_to :user
	belongs_to :portfolio

    #def portfolio_name
    #    self.try(:portfolio).try(:name)
    #end

    def portfolio_name
        portfolio.name 
    end

end