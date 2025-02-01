class CoinsController < ApplicationController
  def index
    @coins_list = Coin.all
    render json: @coins_list.to_json
  end

  def autocomplete
    ar = Coin.where("symbol like LOWER(:symbol) OR LOWER(name) like LOWER(:symbol)", symbol: "#{params[:q]}%").select(:symbol, :name)
    @search_results = ar #.map(&:symbol)
    render layout: false
  end
end
