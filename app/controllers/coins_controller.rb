class CoinsController < ApplicationController
  # def index
  #   @coins_list = Coin.all
  #   render json: @coins_list.to_json
  # end

  def autocomplete
    # coins = Coin.where("symbol like LOWER(:symbol) OR LOWER(name) like LOWER(:symbol)", symbol: "#{params[:q]}%").select(:symbol, :name, :eid)
    coins = Coin.where("symbol like LOWER(:symbol)", symbol: "#{params[:q]}").select(:symbol, :name, :eid)
    @search_results = coins
    render layout: false
  end
end
