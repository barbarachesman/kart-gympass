# https://guides.rubyonrails.org/testing.html#functional-tests-for-your-controllers
require 'test_helper'


class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get '/'
    assert_response :success
  end
  test "ajax request" do
    get '/users/index', xhr: true
    assert_not_nil (:users)
    assert_response :success, @controller.index
  end
  test "upload" do
      file = fixture_file_upload('files/test.csv', 'text/csv')
      post '/users/import', params: { file: file}
      assert_response :redirect
      follow_redirect!
      assert_response :success
  end
end
