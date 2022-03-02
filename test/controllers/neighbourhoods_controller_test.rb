require "test_helper"

class NeighbourhoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @neighbourhood = neighbourhoods(:one)
  end

  test "should get index" do
    get neighbourhoods_url
    assert_response :success
  end

  test "should get new" do
    get new_neighbourhood_url
    assert_response :success
  end

  test "should create neighbourhood" do
    assert_difference("Neighbourhood.count") do
      post neighbourhoods_url, params: { neighbourhood: { name: @neighbourhood.name, polygons: @neighbourhood.polygons } }
    end

    assert_redirected_to neighbourhood_url(Neighbourhood.last)
  end

  test "should show neighbourhood" do
    get neighbourhood_url(@neighbourhood)
    assert_response :success
  end

  test "should get edit" do
    get edit_neighbourhood_url(@neighbourhood)
    assert_response :success
  end

  test "should update neighbourhood" do
    patch neighbourhood_url(@neighbourhood), params: { neighbourhood: { name: @neighbourhood.name, polygons: @neighbourhood.polygons } }
    assert_redirected_to neighbourhood_url(@neighbourhood)
  end

  test "should destroy neighbourhood" do
    assert_difference("Neighbourhood.count", -1) do
      delete neighbourhood_url(@neighbourhood)
    end

    assert_redirected_to neighbourhoods_url
  end
end
