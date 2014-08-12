require 'test_helper'

class CarTest < ActiveSupport::TestCase
  
  test 'Created valid new car' do
    test = Car.new(:model_id => 1, :mileage => 666, :registration_no => "srutututtutut", :year_of_manufacture => 2000)
    assert_equal true, test.save
  end
  
  test 'Created empty new car' do
    test = Car.new()
    assert_equal false, test.save
  end
  
  test "mileage less than 0" do
    test = Car.new(:model_id => 1, :mileage => -10, :registration_no => "srutututtutut", :year_of_manufacture => 2000)
    assert_equal false, test.save
  end
  
  test "mileage as string" do
    test = Car.new(:model_id => 1, :mileage => "Two hundred", :registration_no => "srutututtutut", :year_of_manufacture => 2000)
    assert_equal false, test.save
  end
  
  test "Testing car year" do
    test = Car.new(:model_id => 1, :mileage => 666, :registration_no => "srutututtutut", :year_of_manufacture => 1890)
    assert_equal false, test.save
    test = Car.new(:model_id => 1, :mileage => 666, :registration_no => "srutututtutut", :year_of_manufacture => 2190)
    assert_equal false, test.save
  end
end
