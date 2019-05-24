require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { Garlic_Noodles_Beef: @order.Garlic_Noodles_Beef, Garlic_Noodles_Chicken: @order.Garlic_Noodles_Chicken, Garlic_Noodles_Shrimp: @order.Garlic_Noodles_Shrimp, Notes: @order.Notes, Pad_Thai_Beef: @order.Pad_Thai_Beef, Pad_Thai_Chicken: @order.Pad_Thai_Chicken, Pad_Thai_Shrimp: @order.Pad_Thai_Shrimp, Satay_Wraps: @order.Satay_Wraps } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { Garlic_Noodles_Beef: @order.Garlic_Noodles_Beef, Garlic_Noodles_Chicken: @order.Garlic_Noodles_Chicken, Garlic_Noodles_Shrimp: @order.Garlic_Noodles_Shrimp, Notes: @order.Notes, Pad_Thai_Beef: @order.Pad_Thai_Beef, Pad_Thai_Chicken: @order.Pad_Thai_Chicken, Pad_Thai_Shrimp: @order.Pad_Thai_Shrimp, Satay_Wraps: @order.Satay_Wraps } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
