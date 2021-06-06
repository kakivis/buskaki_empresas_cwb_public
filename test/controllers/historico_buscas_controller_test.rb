require 'test_helper'

class HistoricoBuscasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get historico_buscas_new_url
    assert_response :success
  end

end
