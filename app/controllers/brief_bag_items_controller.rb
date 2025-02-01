class BriefBagItemsController < ApplicationController
  before_action :set_brief_bag, only: %i[index new edit]
  before_action :set_brief_bag_item, only: %i[ edit update destroy ]

  # GET /brief_bag_items or /brief_bag_items.json
  def index
    @brief_bag_items = @brief_bag.brief_bag_items.all
  end

  def new
    @brief_bag_item = @brief_bag.brief_bag_items.new
  end

  def edit
  end

  def create
    @brief_bag_item = @brief_bag.brief_bag_items.new(brief_bag_item_params)

    respond_to do |format|
      if @brief_bag_item.save
        format.html { redirect_to brief_bag_items_path, notice: "Brief bag item was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brief_bag_items/1 or /brief_bag_items/1.json
  def update
    respond_to do |format|
      if @brief_bag_item.update(brief_bag_item_params)
        format.html { redirect_to brief_bag_items_path, notice: "Запись обновлена" }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brief_bag_items/1 or /brief_bag_items/1.json
  def destroy
    @brief_bag_item.destroy!

    respond_to do |format|
      format.html { redirect_to brief_bag_items_path, status: :see_other, notice: "Запись удалена" }
    end
  end

  private
    def set_brief_bag
      @brief_bag = current_user.brief_bag
    end

    def set_brief_bag_item
      @brief_bag_item = current_user.brief_bag.brief_bag_items.find(params[:id])
    end

    def brief_bag_item_params
      params.fetch(:brief_bag_item, {}).permit(:name, :symbol, :value)
    end
end
