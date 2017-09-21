require 'rails_helper'

RSpec.describe "Reporte daños", type: :request do
  before(:each) do
    @reporte=FactoryGirl.build(:reporte_dano)
    @reporte.save
  end
  describe "POST #create" do
    it "Creación de un reporte de daños" do
      post "/reporte_danos", params:{reporte_dano:@reporte.attributes}
      expect(response).to have_http_status(:success)
    end

    it "Creación de un reporte de daños, si el usuario añade una ciudad nueva que no existia en el municipio" do
      post "/reporte_danos", params:{reporte_dano:@reporte.attributes,ciudad:{nombre:"Nueva ciudad"}}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #obtener-por-delegacion" do
    it "Obtener reportes por delegacion" do
      get "/reporte_danos/delegacion/#{@reporte.delegacion_id}"
      expect(response).to have_http_status(:success)
    end
  end


  describe "GET #obtener-por-dano" do
    it "Obtener reportes por el tipo de daño" do
      get "/reporte_danos/dano/#{@reporte.tipo_dano_id}"
      expect(response).to have_http_status(:success)
    end
  end
end
