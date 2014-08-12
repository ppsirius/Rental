require 'test_helper'

class ClientTest < ActiveSupport::TestCase
   test "Client with empty params" do
     test = Client.new()
     assert_equal false, test.save
   end
end
