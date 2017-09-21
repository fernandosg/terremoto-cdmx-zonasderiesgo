class EntidadsController < ApplicationController
  before_action :set_entidad, only: [:show, :update, :destroy]

  # GET /reporte_danos
  def index
    @entidads = Entidad.all

    render json: @entidads
  end

  # GET /reporte_danos/1
  def show
    render json: @entidad
  end

  # POST /reporte_danos
  def create
    @entidad = Entidad.new(entidad_params)

    if @entidad.save
      render json: @entidad, status: :created, location: @entidad
    else
      render json: @entidad.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /reporte_danos/1
  def update
    if @entidad.update(entidad_params)
      render json: @entidad
    else
      render json: @entidad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reporte_danos/1
  def destroy
    @entidad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entidad
      @entidad = Entidad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entidad_params
      params.require(:entidad).permit(:nombre)
    end
end
