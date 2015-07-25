class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show,:edit,:update,:destroy]

  def index
    @portfolios = Portfolio.all
  end

  def show

  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.create(portfolio_params)
    if @portfolio.save!
      redirect_to @portfolio
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @portfolio.update!(portfolio_params)
      redirect_to @portfolio
    else
      render :edit
    end
  end

  def destroy
    if @portfolio.destroy!
      redirect_to @portfolios
    else
      render @portfolio
    end
  end

  private

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title,:description,:project_url)
  end
end
