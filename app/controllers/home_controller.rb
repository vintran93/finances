class HomeController < ApplicationController

    def index
    end
  
    def about
    end
  
    def search
      require 'net/http'
      require 'json'
      @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=3faaac7a-4b4d-44d3-9001-1cb1e966e9ce'
      @uri = URI(@url)
      @response1 = Net::HTTP.get(@uri)
      @search_coin = JSON.parse(@response1)
      
      @api = 'https://financialmodelingprep.com/api/v3/stock/list?apikey=1d1c39289a199e97b82ab6d6f62bdabb'
      # 1d1c39289a199e97b82ab6d6f62bdabb
      @uri2 = URI(@api)
      @response2 = Net::HTTP.get(@uri2)
      @search_stocks = JSON.parse(@response2)

      @stock = params[:sym]
        if @stock
          @stock = @stock.upcase
      end 
      
      if @stock == "" 
        @stock = "Please enter a stock symbol to search."
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