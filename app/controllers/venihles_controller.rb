class VenihlesController < ApplicationController
  before_action :set_venihle, only: %i[ show edit update destroy ]

  # GET /venihles or /venihles.json
  def index
    @venihles = Venihle.all
  end

  # GET /venihles/1 or /venihles/1.json
  def show
  end

  # GET /venihles/new
  def new
    @venihle = Venihle.new
  end

  # GET /venihles/1/edit
  def edit
  end

  # POST /venihles or /venihles.json
  def create
    @venihle = Venihle.new(venihle_params)

    respond_to do |format|
      if @venihle.save
        format.html { redirect_to venihle_url(@venihle), notice: "Venihle was successfully created." }
        format.json { render :show, status: :created, location: @venihle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @venihle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venihles/1 or /venihles/1.json
  def update
    respond_to do |format|
      if @venihle.update(venihle_params)
        format.html { redirect_to venihle_url(@venihle), notice: "Venihle was successfully updated." }
        format.json { render :show, status: :ok, location: @venihle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @venihle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venihles/1 or /venihles/1.json
  def destroy
    @venihle.destroy

    respond_to do |format|
      format.html { redirect_to venihles_url, notice: "Venihle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venihle
      @venihle = Venihle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def venihle_params
      params.fetch(:venihle, {})
    end
end
