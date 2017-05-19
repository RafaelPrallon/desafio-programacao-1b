require 'test_helper'

class SellTest < ActiveSupport::TestCase
  def setup
    @sell1 = Sell.new(buyer: "Afonso", description:  "Bananas", price: "5", qtd: "5", provider: "Fábrica de bananas")
    testfile = File.open("dadosteste.txt", "w+")
    @upload = Upload.new(name: "Teste", attachment: testfile)
  end
  
  test "Sell should be valid" do
    assert @sell1.valid?
  end
  
  test "readfile shoould work" do
    filename = "#{@upload.attachment.path}"
    @sell2 = Sell.readfile(filename)
    assert_response :success
  end
end
