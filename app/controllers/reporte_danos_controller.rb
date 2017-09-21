class ReporteDanosController < ApplicationController
  before_action :set_reporte_dano, only: [:show, :update, :destroy]

  # GET /reporte_danos
  def index
    @reporte_danos = ReporteDano.all

    render json: @reporte_danos
  end

  # GET /reporte_danos/1
  def show
    render json: @reporte_dano
  end
  #version
  # POST /reporte_danos
  def create
    @reporte_dano = ReporteDano.new(reporte_dano_params)
    if !params[:delegacion].nil?
      @reporte_dano.build_delegacion nombre:params[:delegacion], entidad_id:@reporte_dano.entidad_id
    end
    if @reporte_dano.save
      render json: @reporte_dano, status: :created, location: @reporte_dano
    else
      @reporte_dano.errors.each do |error|
        puts error
      end
      render json: @reporte_dano.errors, status: :unprocessable_entity
    end
  end

  def obtener_por_delegacion
    @reportes=ReporteDano.obtener_por_delegacion params[:delegacion_id]
  end


  def obtener_por_tipo_dano
    @reportes=ReporteDano.obtener_por_tipo_dano params[:tipo_dano_id]
  end

  # PATCH/PUT /reporte_danos/1
  def update
    if @reporte_dano.update(reporte_dano_params)
      render json: @reporte_dano
    else
      render json: @reporte_dano.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reporte_danos/1
  def destroy
    @reporte_dano.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_reporte_dano
    @reporte_dano = ReporteDano.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def reporte_dano_params
    params.require(:reporte_dano).permit(:tipo_dano_id, :delegacion_id, :entidad_id, :calle, :numero_exterior, :codigo_postal, :entre_calles, :personas_heridas_fallecidas, :personas_afectadas, :apoyo_necesario, :informacion_contacto, :informacion_extra, :lat, :lng)
  end
end
