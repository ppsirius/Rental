require 'test_helper'

class ClientTest < ActiveSupport::TestCase
   test "Client with empty params" do
     test = Client.new
     assert_equal false, test.save
   end
   
   test "Age cannot be a string" do
     test = Client.new(:name => "Kowalski", :surname => "Jan", :age => "seven", :document_no => "qwerty", :document_type => "qwerty")
     assert_equal false, test.save
   end
end
