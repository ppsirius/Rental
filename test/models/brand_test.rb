require 'test_helper'

class BrandTest < ActiveSupport::TestCase
   test "The validate brand is saved" do
     test = Brand.create(:brand_name => "Volvo")
     assert_equal true, test.save
   end
   
   test "The invalid brand is NOT saved" do
     test = Brand.create(:brand_name => "xx")
     assert_equal false, test.save
   end
end
