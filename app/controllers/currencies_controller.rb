class CurrenciesController < ApplicationController

  def table
    @currencies = Currency.all
    require 'net/http'
    require 'json'
    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=3faaac7a-4b4d-44d3-9001-1cb1e966e9ce'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @search_coin = JSON.parse(@response)
    @api = 'https://financialmodelingprep.com/api/v3/stock/list?apikey=1d1c39289a199e97b82ab6d6f62bdabb'
    #1d1c39289a199e97b82ab6d6f62bdabb
    @uri2 = URI(@api)
    @response2 = Net::HTTP.get(@uri2)
    @search_stocks = JSON.parse(@response2)
  end

  def index
    if user_signed_in?
      @currencies = Currency.where(user_id: current_user.id)
    else
      redirect_to new_user_session_url, alert: "You must sign in first."
    end
  end

  def sorted
    if user_signed_in?
      @currencies = Currency.where(user_id: current_user.id)
    else
      redirect_to new_user_session_url, alert: "You must sign in first."
    end
  end

  def sorted_descending
    if user_signed_in?
      @currencies = Currency.where(user_id: current_user.id)
    else
      redirect_to new_user_session_url, alert: "You must sign in first."
    end
  end
  
  def show
    @currency = Currency.find(params[:id])
  end

  def new
    @currency = Currency.new
  end

  def create
      @currency = Currency.new(currency_params)
      @currency.user_id = current_user.id
      if @currency.save
        redirect_to @currency
      else
        render :new
      end
  end

  def edit
    @currency = Currency.find(params[:id])
  end

  def update
    @currency = Currency.find(params[:id])
    @currency.update(currency_params)
    if @currency.save
      redirect_to @currency
    else
      render :edit
    end
  end

  def destroy
    @currency = Currency.find(params[:id])
    @currency.destroy
    flash[:notice] = "Currency deleted."
    redirect_to currencies_path
  end

  private
  
  def currency_params
    params.require(:currency).permit(:name, :portfolio_id, :portfolio_name, :symbol, :price_per, :amount_owned)
  end

end