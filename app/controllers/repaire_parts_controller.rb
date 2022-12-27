class RepairePartsController < ApplicationController
  before_action :set_repaire_part, only: %i[ show edit update destroy ]

  # GET /repaire_parts or /repaire_parts.json
  def index
    @repaire_parts = RepairePart.all
  end

  # GET /repaire_parts/1 or /repaire_parts/1.json
  def show
  end

  # GET /repaire_parts/new
  def new
    @repaire_part = RepairePart.new
  end

  # GET /repaire_parts/1/edit
  def edit
  end

  # POST /repaire_parts or /repaire_parts.json
  def create
    @repaire_part = RepairePart.new(repaire_part_params)

    respond_to do |format|
      if @repaire_part.save
        format.html { redirect_to repaire_part_url(@repaire_part), notice: "Repaire part was successfully created." }
        format.json { render :show, status: :created, location: @repaire_part }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @repaire_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repaire_parts/1 or /repaire_parts/1.json
  def update
    respond_to do |format|
      if @repaire_part.update(repaire_part_params)
        format.html { redirect_to repaire_part_url(@repaire_part), notice: "Repaire part was successfully updated." }
        format.json { render :show, status: :ok, location: @repaire_part }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @repaire_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repaire_parts/1 or /repaire_parts/1.json
  def destroy
    @repaire_part.destroy

    respond_to do |format|
      format.html { redirect_to repaire_parts_url, notice: "Repaire part was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repaire_part
      @repaire_part = RepairePart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def repaire_part_params
      params.fetch(:repaire_part, {})
    end
end
