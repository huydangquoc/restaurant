require 'test_helper'

class FoodItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_item = food_items(:one)
  end

  test "should get index" do
    get food_items_url
    assert_response :success
  end

  test "should get new" do
    get new_food_item_url
    assert_response :success
  end

  test "should create food_item" do
    assert_difference('FoodItem.count') do
      post food_items_url, params: { food_item: { description: @food_item.description, name: @food_item.name, price: @food_item.price, remote_image_url: @food_item.remote_image_url, section: @food_item.section } }
    end

    assert_redirected_to food_item_url(FoodItem.last)
  end

  test "should show food_item" do
    get food_item_url(@food_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_item_url(@food_item)
    assert_response :success
  end

  test "should update food_item" do
    patch food_item_url(@food_item), params: { food_item: { description: @food_item.description, name: @food_item.name, price: @food_item.price, remote_image_url: @food_item.remote_image_url, section: @food_item.section } }
    assert_redirected_to food_item_url(@food_item)
  end

  test "should destroy food_item" do
    assert_difference('FoodItem.count', -1) do
      delete food_item_url(@food_item)
    end

    assert_redirected_to food_items_url
  end
end
