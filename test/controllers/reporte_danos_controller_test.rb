require 'test_helper'

class ReporteDanosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reporte_dano = reporte_danos(:one)
  end

  test "should get index" do
    get reporte_danos_url, as: :json
    assert_response :success
  end

  test "should create reporte_dano" do
    assert_difference('ReporteDano.count') do
      post reporte_danos_url, params: { reporte_dano: { apoyo_necesario: @reporte_dano.apoyo_necesario, calle: @reporte_dano.calle, ciudad_id: @reporte_dano.ciudad_id, codigo_postal: @reporte_dano.codigo_postal, entre_calles: @reporte_dano.entre_calles, informacion_contacto: @reporte_dano.informacion_contacto, informacion_extra: @reporte_dano.informacion_extra, municipio_id: @reporte_dano.municipio_id, numero_exterior: @reporte_dano.numero_exterior, personas_afectadas: @reporte_dano.personas_afectadas, personas_heridas_fallecidas: @reporte_dano.personas_heridas_fallecidas, tipo_dano_id: @reporte_dano.tipo_dano_id } }, as: :json
    end

    assert_response 201
  end

  test "should show reporte_dano" do
    get reporte_dano_url(@reporte_dano), as: :json
    assert_response :success
  end

  test "should update reporte_dano" do
    patch reporte_dano_url(@reporte_dano), params: { reporte_dano: { apoyo_necesario: @reporte_dano.apoyo_necesario, calle: @reporte_dano.calle, ciudad_id: @reporte_dano.ciudad_id, codigo_postal: @reporte_dano.codigo_postal, entre_calles: @reporte_dano.entre_calles, informacion_contacto: @reporte_dano.informacion_contacto, informacion_extra: @reporte_dano.informacion_extra, municipio_id: @reporte_dano.municipio_id, numero_exterior: @reporte_dano.numero_exterior, personas_afectadas: @reporte_dano.personas_afectadas, personas_heridas_fallecidas: @reporte_dano.personas_heridas_fallecidas, tipo_dano_id: @reporte_dano.tipo_dano_id } }, as: :json
    assert_response 200
  end

  test "should destroy reporte_dano" do
    assert_difference('ReporteDano.count', -1) do
      delete reporte_dano_url(@reporte_dano), as: :json
    end

    assert_response 204
  end
end
