require 'test_helper'

class UserTest < ActiveSupport::TestCase
	  test "a user should enter the first name" do
   user = User.new
   assert !user.save
   assert !user.errors[:first_name].empty?
   end
      test "a user should enter the last name" do
   user = User.new
   assert !user.save
   assert !user.errors[:last_name].empty?
   end
      test "a user should enter the profile name" do
   user = User.new
   assert !user.save
   assert !user.errors[:profile_name].empty?
   end
 

end
