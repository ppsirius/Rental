require 'test_helper'

class ModelTest < ActiveSupport::TestCase
  test "valid params should be saved" do
    test = Model.new(:model_name => "Astra", :brand_id => 10 )
    assert_equal true, test.save
  end
  
  test "empty name and brand_id shouldnt be saved" do
    test = Model.new()
    assert_equal false, test.save
  end
  
  test "model name should be unique" do
    test1 = Model.new(:model_name => "Astra", :brand_id => 10)
    test1.save
    test2 = Model.new(:model_name => "Astra", :brand_id => 10)
    assert_equal false, test2.save
  end
  
  test "brand_id should be greater than 0" do
    test = Model.new(:model_name => "Astra", :brand_id => -10 )
    assert_equal false, test.save
  end
  
  test "name should have only chars" do
    test = Model.new(:model_name => "999999", :brand_id => 10)
    assert_equal false, test.save
  end
end
