require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "should create post" do
    visit posts_url
    click_on "New post"

    fill_in "Author", with: @post.author
    fill_in "Body", with: @post.body
    fill_in "Crypto", with: @post.crypto
    fill_in "Home loan", with: @post.home_loan
    fill_in "Income", with: @post.income
    fill_in "Investments", with: @post.investments
    fill_in "Published date", with: @post.published_date
    fill_in "Savings", with: @post.savings
    fill_in "Status", with: @post.status
    fill_in "Title", with: @post.title
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "should update Post" do
    visit post_url(@post)
    click_on "Edit this post", match: :first

    fill_in "Author", with: @post.author
    fill_in "Body", with: @post.body
    fill_in "Crypto", with: @post.crypto
    fill_in "Home loan", with: @post.home_loan
    fill_in "Income", with: @post.income
    fill_in "Investments", with: @post.investments
    fill_in "Published date", with: @post.published_date
    fill_in "Savings", with: @post.savings
    fill_in "Status", with: @post.status
    fill_in "Title", with: @post.title
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "should destroy Post" do
    visit post_url(@post)
    click_on "Destroy this post", match: :first

    assert_text "Post was successfully destroyed"
  end
end
