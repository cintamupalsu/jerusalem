require 'test_helper'

class MainPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title ="References"
  end
  
  test "should get root" do
    get root_url
    assert_response :success
  end
  
  test "should get home" do
    get main_pages_home_url
    assert_response :success
   # assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get main_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
  
  test "should get about" do
    get main_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

end
