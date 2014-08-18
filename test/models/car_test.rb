require 'test_helper'

class CarTest < ActiveSupport::TestCase
#=begin
  test 'Created valid new car' do
    test = Car.new(:model => models(:m3), :mileage => 666, :registration_no => "srutututtutut", :year_of_manufacture => 2000)
    assert test.save, ""
  end
  
  test 'Created empty new car' do
    test = Car.new
    assert !test.save
  end
  
  test "mileage less than 0" do
    test = Car.new(:model_id => 1, :mileage => -10, :registration_no => "srutututtutut", :year_of_manufacture => 2000)
    assert !test.save
  end
  
  test "mileage as string" do
    test = Car.new(:model_id => 1, :mileage => "Two hundred", :registration_no => "srutututtutut", :year_of_manufacture => 2000)
    assert !test.save
  end
  
  test "Testing car year" do
    test = Car.new(:model_id => 1, :mileage => 666, :registration_no => "srutututtutut", :year_of_manufacture => 1890)
    assert !test.save
    test = Car.new(:model_id => 1, :mileage => 666, :registration_no => "srutututtutut", :year_of_manufacture => 2190)
    assert !test.save
  end
#=end
end
