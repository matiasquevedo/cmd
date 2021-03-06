class PortionsController < ApplicationController
  before_action :set_portion, only: [:show, :edit, :update, :destroy]
  before_action :set_sale
  # GET /portions
  # GET /portions.json
  def index
    @portions = Portion.all
  end

  # GET /portions/1
  # GET /portions/1.json
  def show
  end

  # GET /portions/new
  def new
    @portion = Portion.new
  end

  # GET /portions/1/edit
  def edit
  end

  # POST /portions
  # POST /portions.json
  def create
    @portion = Portion.new(portion_params)
    @portion.sale = @sale   
    if @portion.quantity
      @portion.total = @portion.food.price * @portion.quantity      
    end
    respond_to do |format|
      if @portion.save
        format.html { redirect_to @sale, notice: 'Portion was successfully created.' }
        format.json { render :show, status: :created, location: @portion }
      else
        format.html { render :new }
        format.json { render json: @portion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portions/1
  # PATCH/PUT /portions/1.json
  def update
    respond_to do |format|
      if @portion.update(portion_params)
        format.html { redirect_to @portion, notice: 'Portion was successfully updated.' }
        format.json { render :show, status: :ok, location: @portion }
      else
        format.html { render :edit }
        format.json { render json: @portion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portions/1
  # DELETE /portions/1.json
  def destroy
    @portion.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Portion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_sale
      @sale = Sale.find(params[:sale_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_portion
      @portion = Portion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portion_params
      params.require(:portion).permit(:food_id, :sale_id, :quantity)
    end
end
