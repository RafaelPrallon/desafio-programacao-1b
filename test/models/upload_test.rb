require 'test_helper'

class UploadTest < ActiveSupport::TestCase
  def setup
    testfile = File.open("dadosteste.txt", "w+")
    @upload = Upload.new(name: "Teste", attachment: testfile)
  end
  
  test "upload should be valid" do
    assert @upload.valid?
  end
  
  test "name should be present" do
    @upload.name = " "
    assert_not @upload.valid?
  end
end
