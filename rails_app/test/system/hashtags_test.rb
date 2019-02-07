require "application_system_test_case"

class HashtagsTest < ApplicationSystemTestCase
  setup do
    @hashtag = hashtags(:one)
  end

  test "visiting the index" do
    visit hashtags_url
    assert_selector "h1", text: "Hashtags"
  end

  test "creating a Hashtag" do
    visit hashtags_url
    click_on "New Hashtag"

    fill_in "Hashtag", with: @hashtag.hashtag
    click_on "Create Hashtag"

    assert_text "Hashtag was successfully created"
    click_on "Back"
  end

  test "updating a Hashtag" do
    visit hashtags_url
    click_on "Edit", match: :first

    fill_in "Hashtag", with: @hashtag.hashtag
    click_on "Update Hashtag"

    assert_text "Hashtag was successfully updated"
    click_on "Back"
  end

  test "destroying a Hashtag" do
    visit hashtags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hashtag was successfully destroyed"
  end
end
