require "application_system_test_case"

class TinyUrlsTest < ApplicationSystemTestCase
  setup do
    @tiny_url = tiny_urls(:one)
  end

  test "visiting the index" do
    visit tiny_urls_url
    assert_selector "h1", text: "Tiny Urls"
  end

  test "creating a Tiny url" do
    visit tiny_urls_url
    click_on "New Tiny Url"

    fill_in "Reurl", with: @tiny_url.reurl
    click_on "Create Tiny url"

    assert_text "Tiny url was successfully created"
    click_on "Back"
  end

  test "updating a Tiny url" do
    visit tiny_urls_url
    click_on "Edit", match: :first

    fill_in "Reurl", with: @tiny_url.reurl
    click_on "Update Tiny url"

    assert_text "Tiny url was successfully updated"
    click_on "Back"
  end

  test "destroying a Tiny url" do
    visit tiny_urls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tiny url was successfully destroyed"
  end
end
