require "test_helper"

class PurchasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get purchases_index_url
    assert_response :success
  end

  test "should get new" do
    get purchases_new_url
    assert_response :success
  end

  test "should get create" do
    get purchases_create_url
    assert_response :success
  end
end
