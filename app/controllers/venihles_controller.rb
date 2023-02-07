# frozen_string_literal: true

class VenihlesController < ApplicationController
  before_action :set_venihle, only: %i[show edit update destroy]

  def index; end

  def show; end

  def new
    @venihle = Venihle.new
  end

  def edit; end

  def create
    @venihle = Venihle.new(venihle_params)
    if @venihle.save
      redirect_to venihles_path
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @venihle.update(venihle_params)
        format.html { redirect_to venihle_url(@venihle), notice: 'Venihle was successfully updated.' }
        format.json { render :show, status: :ok, location: @venihle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @venihle.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @venihle.destroy

    respond_to do |format|
      format.html { redirect_to venihles_url, notice: 'Venihle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_venihle
    @venihle = Venihle.find(params[:id])
  end

  def venihle_params
    params.require(:venihle).permit(:type, :make, :license_plate, :vin, :year)
  end
end
