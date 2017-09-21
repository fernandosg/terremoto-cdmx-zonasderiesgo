require 'rails_helper'

RSpec.describe ReporteDano, type: :model do
  before(:each) do
    @reporte_dano=FactoryGirl.build(:reporte_dano)
    @reporte_dano.save
  end
  #pending "add some examples to (or delete) #{__FILE__}"
  it "Obteniendo reportes de daños por delegacion" do
    expect(ReporteDano.obtener_por_delegacion(@reporte_dano.delegacion_id)).to be_a ActiveRecord::Relation
  end

  it "Obteniendo reportes de daños por tipo de daños" do
    expect(ReporteDano.obtener_por_tipo_dano(@reporte_dano.tipo_dano_id)).to be_a ActiveRecord::Relation
  end
end
