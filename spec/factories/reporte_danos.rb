# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reporte_dano do
    tipo_dano
    delegacion
    entidad
    calle "Nombre de calle"
    codigo_postal 93988
    entre_calles "Entre calles"
    personas_heridas_fallecidas 0
    personas_afectadas 20
    apoyo_necesario "Apoyo necesario"
    informacion_contacto "A mi numero 888-545-7897"
    informacion_extra "Informacion extra"
  end
end
