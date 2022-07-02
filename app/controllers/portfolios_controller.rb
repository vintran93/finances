class PortfoliosController < ApplicationController
    def index
      if user_signed_in?
          @portfolios = Portfolio.where(user_id: current_user.id)
      else
          redirect_to new_user_session_url, alert: "You must sign in first."
      end
    end
  
    def show
      @portfolio = Portfolio.find(params[:id])
    end
  
    def new
      @portfolio = Portfolio.new
    end
  
    def create
      @portfolio = Portfolio.new(portfolio_params)
      @portfolio.user_id = current_user.id
        if @portfolio.save
          redirect_to @portfolio
        else
          render :new
        end
    end
  
    def edit
      @portfolio = Portfolio.find(params[:id])
    end
  
    def update
      @portfolio = Portfolio.find(params[:id])
      @portfolio.update(portfolio_params)
      if @portfolio.save
        redirect_to @portfolio
      else
        render :edit
      end
    end
  
    def destroy
      @portfolio = Portfolio.find(params[:id])
      @portfolio.destroy
      flash[:notice] = "Portfolio deleted."
      redirect_to portfolios_path
    end
  
    private
  
    def portfolio_params
      params.require(:portfolio).permit(:name, :user_id)
    end
end