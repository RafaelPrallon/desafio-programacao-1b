require 'test_helper'

class SellControllerTest < ActionController::TestCase
  
  def setup
    @sell = Sell.create(buyer: "Afonso", description:  "Bananas", price: "5", qtd: "5", provider: "Fábrica de bananas")
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

end
