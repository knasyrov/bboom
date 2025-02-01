class BriefBagsController < ApplicationController
  before_action :set_brief_bag, only: %i[ show edit update destroy ]

  # GET /brief_bags or /brief_bags.json
  def index
    @brief_bags = BriefBag.all
  end

  # GET /brief_bags/1 or /brief_bags/1.json
  def show
  end

  # GET /brief_bags/new
  def new
    @brief_bag = BriefBag.new
  end

  # GET /brief_bags/1/edit
  def edit
  end

  # POST /brief_bags or /brief_bags.json
  def create
    @brief_bag = BriefBag.new(brief_bag_params)

    respond_to do |format|
      if @brief_bag.save
        format.html { redirect_to @brief_bag, notice: "Brief bag was successfully created." }
        format.json { render :show, status: :created, location: @brief_bag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brief_bag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brief_bags/1 or /brief_bags/1.json
  def update
    respond_to do |format|
      if @brief_bag.update(brief_bag_params)
        format.html { redirect_to @brief_bag, notice: "Brief bag was successfully updated." }
        format.json { render :show, status: :ok, location: @brief_bag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brief_bag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brief_bags/1 or /brief_bags/1.json
  def destroy
    @brief_bag.destroy!

    respond_to do |format|
      format.html { redirect_to brief_bags_path, status: :see_other, notice: "Brief bag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brief_bag
      @brief_bag = BriefBag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brief_bag_params
      params.fetch(:brief_bag, {})
    end
end
