require "test_helper"

class ShopifiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopify = shopifies(:one)
  end

  test "should get index" do
    get shopifies_url
    assert_response :success
  end

  test "should get new" do
    get new_shopify_url
    assert_response :success
  end

  test "should create shopify" do
    assert_difference("Shopify.count") do
      post shopifies_url, params: { shopify: { body: @shopify.body, date: @shopify.date, summary: @shopify.summary, title: @shopify.title } }
    end

    assert_redirected_to shopify_url(Shopify.last)
  end

  test "should show shopify" do
    get shopify_url(@shopify)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopify_url(@shopify)
    assert_response :success
  end

  test "should update shopify" do
    patch shopify_url(@shopify), params: { shopify: { body: @shopify.body, date: @shopify.date, summary: @shopify.summary, title: @shopify.title } }
    assert_redirected_to shopify_url(@shopify)
  end

  test "should destroy shopify" do
    assert_difference("Shopify.count", -1) do
      delete shopify_url(@shopify)
    end

    assert_redirected_to shopifies_url
  end
end
