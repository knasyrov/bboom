class WalletsController < ApplicationController
  before_action :set_brief_bag, only: %i[index new edit create]
  before_action :set_wallet, only: %i[ show edit update destroy ]

  def index
    @wallets = @brief_bag.wallets.all
  end

  def new
    @wallet = @brief_bag.wallets.new
  end

  def show
  end

  def edit
  end

  def create
    @wallet = @brief_bag.wallets.new(wallet_params)
    @wallet.symbol = Coin.find_by_eid(@wallet.eid)&.symbol

    respond_to do |format|
      if @wallet.save
        format.html { redirect_to wallets_path, notice: "Кошелек успешно создан" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    params = wallet_params
    params[:symbol] = Coin.find_by_eid(params[:eid])&.symbol

    respond_to do |format|
      if @wallet.update(params)
        format.html { redirect_to wallets_path, notice: "Запись обновлена" }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @wallet.destroy!

    respond_to do |format|
      format.html { redirect_to wallets_path, status: :see_other, notice: "Запись удалена" }
    end
  end

  private
    def set_brief_bag
      @brief_bag = current_user.brief_bag
    end

    def set_wallet
      @wallet = current_user.brief_bag.wallets.find(params[:id])
    end

    def wallet_params
      params.fetch(:wallet, {}).permit(:name, :symbol, :value, :eid)
    end
end
