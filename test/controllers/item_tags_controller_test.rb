require "test_helper"

class ItemTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_tag = item_tags(:one)
  end

  test "should get index" do
    get item_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_item_tag_url
    assert_response :success
  end

  test "should create item_tag" do
    assert_difference("ItemTag.count") do
      post item_tags_url, params: { item_tag: { item_id: @item_tag.item_id, tag_id: @item_tag.tag_id } }
    end

    assert_redirected_to item_tag_url(ItemTag.last)
  end

  test "should show item_tag" do
    get item_tag_url(@item_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_tag_url(@item_tag)
    assert_response :success
  end

  test "should update item_tag" do
    patch item_tag_url(@item_tag), params: { item_tag: { item_id: @item_tag.item_id, tag_id: @item_tag.tag_id } }
    assert_redirected_to item_tag_url(@item_tag)
  end

  test "should destroy item_tag" do
    assert_difference("ItemTag.count", -1) do
      delete item_tag_url(@item_tag)
    end

    assert_redirected_to item_tags_url
  end
end
