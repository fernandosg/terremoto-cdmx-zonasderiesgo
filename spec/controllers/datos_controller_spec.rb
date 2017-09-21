require 'rails_helper'

RSpec.describe DatosController, type: :controller do

  describe "GET #obtener_municipios_ciudades" do
    it "returns http success" do
      get :obtener_entidades_delegaciones
      expect(response).to have_http_status(:success)
    end
  end

end
