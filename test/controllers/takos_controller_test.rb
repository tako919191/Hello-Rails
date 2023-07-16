require "test_helper"

class TakosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tako = takos(:one)
  end

  test "should get index" do
    get takos_url
    assert_response :success
  end

  test "should get new" do
    get new_tako_url
    assert_response :success
  end

  test "should create tako" do
    assert_difference("Tako.count") do
      post takos_url, params: { tako: { age: @tako.age, name: @tako.name, kind: @tako.kind } }
    end

    assert_redirected_to tako_url(Tako.last)
  end

  test "should show tako" do
    get tako_url(@tako)
    assert_response :success
  end

  test "should get edit" do
    get edit_tako_url(@tako)
    assert_response :success
  end

  test "should update tako" do
    patch tako_url(@tako), params: { tako: { age: @tako.age, name: @tako.name, kind: @tako.kind } }
    assert_redirected_to tako_url(@tako)
  end

  test "should destroy tako" do
    assert_difference("Tako.count", -1) do
      delete tako_url(@tako)
    end

    assert_redirected_to takos_url
  end
end
