require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    base_title = 'Моя записная книжка'
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title",'Главная | ' + base_title
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title",'О нас | ' + base_title
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title",'Контакты | ' + base_title
  end

end
