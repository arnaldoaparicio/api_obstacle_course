class SmokersController < ApplicationController
  before_action :set_smoker, only: %i[ show edit update destroy ]

  # GET /smokers or /smokers.json
  def index
    @smokers = Smoker.all
  end

  # GET /smokers/1 or /smokers/1.json
  def show
  end

  # GET /smokers/new
  def new
    @smoker = Smoker.new
  end

  # GET /smokers/1/edit
  def edit
  end

  # POST /smokers or /smokers.json
  def create
    @smoker = Smoker.new(smoker_params)

    respond_to do |format|
      if @smoker.save
        format.html { redirect_to smoker_url(@smoker), notice: "Smoker was successfully created." }
        format.json { render :show, status: :created, location: @smoker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @smoker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smokers/1 or /smokers/1.json
  def update
    respond_to do |format|
      if @smoker.update(smoker_params)
        format.html { redirect_to smoker_url(@smoker), notice: "Smoker was successfully updated." }
        format.json { render :show, status: :ok, location: @smoker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @smoker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smokers/1 or /smokers/1.json
  def destroy
    @smoker.destroy

    respond_to do |format|
      format.html { redirect_to smokers_url, notice: "Smoker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smoker
      @smoker = Smoker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def smoker_params
      params.require(:smoker).permit(:name, :cranky_level)
    end
end
