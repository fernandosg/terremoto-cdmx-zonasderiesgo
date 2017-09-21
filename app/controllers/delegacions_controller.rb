class DelegacionsController < ApplicationController
  before_action :set_delegacion, only: [:show, :update, :destroy]

  # GET /reporte_danos
  def index
    @delegacions = Delegacion.all

    render json: @delegacions
  end

  # GET /reporte_danos/1
  def show
    render json: @delegacion
  end

  # POST /reporte_danos
  def create
    @ciudad= Delegacion.new(delegacion_params)

    if @delegacion.save
      render json: @delegacion, status: :created, location: @reporte_dano
    else
      render json: @delegacion.errors, status: :unprocessable_entity
    end
  end

  def obtener_por_municipio
    render json:Delegacion.where(entidad_id:params[:entidad_id])
  end

  # PATCH/PUT /reporte_danos/1
  def update
    if @delegacion.update(delegacion_params)
      render json: @delegacion
    else
      render json: @delegacion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reporte_danos/1
  def destroy
    @delegacion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delegacion
      @delegacion= Delegacion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def delegacion_params
      params.require(:delegacion).permit(:nombre,:entidad_id)
    end
end
