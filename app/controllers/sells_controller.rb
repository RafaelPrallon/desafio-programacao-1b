class SellsController < ApplicationController
  
  def index
    @sells = Sell.all
  end

  def new
    @sell = Sell.new
  end

  def create
    @sell = Sell.new(sell_params)
    if @sell.save
    else
      flash[:success] = "A venda foi inserida no sistema com sucesso"
      render 'index'
    end
  end
  
  private  
  
  def sell_params
      params.require(:sell).permit(:buyer, :description, :price, :qtd, :provider)
  end
end
