require 'test_helper'

class TiendaControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get tienda_inicio_url
    assert_response :success
  end

  test "should get celular" do
    get tienda_celular_url
    assert_response :success
  end

  test "should get computadora" do
    get tienda_computadora_url
    assert_response :success
  end

  test "should get tablet" do
    get tienda_tablet_url
    assert_response :success
  end

end
