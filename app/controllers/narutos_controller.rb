class NarutosController < ApplicationController
  before_action :authorize, only: %i[create update destroy]
  before_action :set_naruto, only: %i[ show update destroy ]

  # GET /narutos
  def index
    @narutos = Naruto.all

    render json: @narutos
  end

  # GET /narutos/1
  def show
    render json: @naruto
  end

  # POST /narutos
  def create
    @naruto = Naruto.new(naruto_params)

    if @naruto.save
      render json: @naruto, status: :created, location: @naruto
    else
      render json: @naruto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /narutos/1
  def update
    if @naruto.update(naruto_params)
      render json: @naruto
    else
      render json: @naruto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /narutos/1
  def destroy
    @naruto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_naruto
      @naruto = Naruto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def naruto_params
      params.require(:naruto).permit(:character, :village, :eye)
    end
end
