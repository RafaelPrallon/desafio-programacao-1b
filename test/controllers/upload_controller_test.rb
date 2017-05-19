require 'test_helper'

class UploadControllerTest < ActionController::TestCase
  
  def setup
    testfile = File.open("dadosteste.txt", "w+")
    @upload = Upload.create(name: "Teste", attachment: testfile)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
