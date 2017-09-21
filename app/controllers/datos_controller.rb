class DatosController < ApplicationController
  def obtener_entidades_delegaciones
    render json:{entidad:Entidad.all,delegaciones:Delegacion.all}
  end

  def obtener_tipo_dano
    render json:TipoDano.all
  end

  def obtener_informacion_formulario
    render json:{entidades:Entidad.all,delegaciones:Delegacion.all,tipo_dano:TipoDano.all}
  end

end
