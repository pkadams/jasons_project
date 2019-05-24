require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Garlic noodles beef", with: @order.Garlic_Noodles_Beef
    fill_in "Garlic noodles chicken", with: @order.Garlic_Noodles_Chicken
    fill_in "Garlic noodles shrimp", with: @order.Garlic_Noodles_Shrimp
    fill_in "Notes", with: @order.Notes
    fill_in "Pad thai beef", with: @order.Pad_Thai_Beef
    fill_in "Pad thai chicken", with: @order.Pad_Thai_Chicken
    fill_in "Pad thai shrimp", with: @order.Pad_Thai_Shrimp
    fill_in "Satay wraps", with: @order.Satay_Wraps
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Garlic noodles beef", with: @order.Garlic_Noodles_Beef
    fill_in "Garlic noodles chicken", with: @order.Garlic_Noodles_Chicken
    fill_in "Garlic noodles shrimp", with: @order.Garlic_Noodles_Shrimp
    fill_in "Notes", with: @order.Notes
    fill_in "Pad thai beef", with: @order.Pad_Thai_Beef
    fill_in "Pad thai chicken", with: @order.Pad_Thai_Chicken
    fill_in "Pad thai shrimp", with: @order.Pad_Thai_Shrimp
    fill_in "Satay wraps", with: @order.Satay_Wraps
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
