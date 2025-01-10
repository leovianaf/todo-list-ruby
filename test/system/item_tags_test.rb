require "application_system_test_case"

class ItemTagsTest < ApplicationSystemTestCase
  setup do
    @item_tag = item_tags(:one)
  end

  test "visiting the index" do
    visit item_tags_url
    assert_selector "h1", text: "Item tags"
  end

  test "should create item tag" do
    visit item_tags_url
    click_on "New item tag"

    fill_in "Item", with: @item_tag.item_id
    fill_in "Tag", with: @item_tag.tag_id
    click_on "Create Item tag"

    assert_text "Item tag was successfully created"
    click_on "Back"
  end

  test "should update Item tag" do
    visit item_tag_url(@item_tag)
    click_on "Edit this item tag", match: :first

    fill_in "Item", with: @item_tag.item_id
    fill_in "Tag", with: @item_tag.tag_id
    click_on "Update Item tag"

    assert_text "Item tag was successfully updated"
    click_on "Back"
  end

  test "should destroy Item tag" do
    visit item_tag_url(@item_tag)
    click_on "Destroy this item tag", match: :first

    assert_text "Item tag was successfully destroyed"
  end
end
