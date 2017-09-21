class ReporteDanoSerializer < ActiveModel::Serializer
  attributes :calle, :numero_exterior, :codigo_postal, :entre_calles, :personas_heridas_fallecidas, :personas_afectadas, :apoyo_necesario, :informacion_extra, :informacion_contacto

  belongs_to :tipo_dano
  belongs_to :entidad
  belongs_to :delegacion
end
