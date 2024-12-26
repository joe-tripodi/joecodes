require "application_system_test_case"

class ShopifiesTest < ApplicationSystemTestCase
  setup do
    @shopify = shopifies(:one)
  end

  test "visiting the index" do
    visit shopifies_url
    assert_selector "h1", text: "Shopifies"
  end

  test "should create shopify" do
    visit shopifies_url
    click_on "New shopify"

    fill_in "Body", with: @shopify.body
    fill_in "Date", with: @shopify.date
    fill_in "Summary", with: @shopify.summary
    fill_in "Title", with: @shopify.title
    click_on "Create Shopify"

    assert_text "Shopify was successfully created"
    click_on "Back"
  end

  test "should update Shopify" do
    visit shopify_url(@shopify)
    click_on "Edit this shopify", match: :first

    fill_in "Body", with: @shopify.body
    fill_in "Date", with: @shopify.date
    fill_in "Summary", with: @shopify.summary
    fill_in "Title", with: @shopify.title
    click_on "Update Shopify"

    assert_text "Shopify was successfully updated"
    click_on "Back"
  end

  test "should destroy Shopify" do
    visit shopify_url(@shopify)
    click_on "Destroy this shopify", match: :first

    assert_text "Shopify was successfully destroyed"
  end
end
