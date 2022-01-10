class HomeController < ApplicationController

    def index
      require 'net/http'
      require 'json'
      @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=3faaac7a-4b4d-44d3-9001-1cb1e966e9ce'
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
      @coins = JSON.parse(@response)
      @my_coins = ["BTC", "ETH", "SHIB", "MANA", "CRO"]

      @stockapi = StockQuote::Stock.new(api_key: 'pk_ca9afb4b10db43f78192ce4764e34647')
      


      #stock = StockQuote::Stock.quote("symbol")
    end
  
    def about
    end
  
    def search
      require 'net/http'
      require 'json'
      @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=3faaac7a-4b4d-44d3-9001-1cb1e966e9ce'
      @uri = URI(@url)
      @response = Net::HTTP.get(@uri)
      @search_coin = JSON.parse(@response)
      @stockapi = StockQuote::Stock.new(api_key: 'pk_ca9afb4b10db43f78192ce4764e34647')
      if params[:symbol] == ""
        @blank = "Please enter a stock symbol to search."
      elsif params[:symbol]
        @stock = StockQuote::Stock.quote(params[:symbol])
      else
        @error = "That stock does not exist."
      end
      


      @symbol = params[:sym] 
        if @symbol
          @symbol = @symbol.upcase
      end
      
      if @symbol == "" 
        @symbol = "Please enter a cryptocurrency symbol to search."
      end
  
    end
end

# https://iexcloud.io/console/