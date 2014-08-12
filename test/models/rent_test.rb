require 'test_helper'

class RentTest < ActiveSupport::TestCase
  test "rent with valid params should saved" do
    test = Rent.new(:client_id => 10, :car_id => 10)
    assert_equal true, test.save
  end
  test "rent params shouldnt be empty" do
    test = Rent.new()
    assert_equal false, test.save
  end
  test "client_id and car_id should be integer" do
    test = Rent.new(:client_id => "string", :car_id => "string")
    assert_equal false, test.save
  end
  
  test "client_id and car_id should be greater than 0" do
    test = Rent.new(:client_id => -10, :car_id => -10)
    assert_equal false, test.save
  end
end
