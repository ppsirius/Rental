require 'test_helper'

class BrandTest < ActiveSupport::TestCase
  
   test "The validate brand is saved" do
     test = Brand.new(:brand_name => "Volvo")
     assert_equal true, test.save
   end
   
   test "The INvalidate name of brand is saved" do
     test = Brand.new(:brand_name => "xx")
     assert_equal false, test.save
     test = Brand.new(:brand_name => 1)
     assert_equal false, test.save
     test = Brand.new()
     assert_equal false, test.save
   end
   
   test "Brand name should be uniquness" do
     test1 = Brand.new(:brand_name => "Volvo")
     test1.save
     test2 = Brand.new(:brand_name => "Volvo")
     assert_equal false, test2.save
   end
   
   test "Brand name should have only chars" do
     test = Brand.new(:brand_name => "999999")
     assert_equal false, test.save
   end
   
end
