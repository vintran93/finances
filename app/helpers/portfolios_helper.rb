module PortfoliosHelper
    # display portfolios in the currencies index
    def display_portfolio(currency)
        link_to(currency.portfolio_name, portfolio_path(currency.portfolio))
    end
  
    # Display dropdown of portfolio if editing through nested
    def portfolio_select(currency, path)
      if currency.portfolio && path 
        hidden_field_tag "currency[portfolio_id]", currency.portfolio_id
      else
        select_tag "currency[portfolio_id]", options_from_collection_for_select(Portfolio.where(user_id: current_user.id), :id, :name)
      end
    end
  
    # Display name if editing through nested
    def display_name(currency, path)
      if currency.portfolio && path
        currency.portfolio.name
      end
    end
end