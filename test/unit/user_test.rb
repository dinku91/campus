require 'test_helper'

class UserTest < ActiveSupport::TestCase

    should have_many(:user_friendships)
    should have_many(:friends)
    
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
   
    test "a user should have unique profile name" do  
	user = User.new
	user.profile_name = users(:jason).profile_name
	assert !user.save
	assert !user.errors[:profile_name].empty?
	end
	
   test "that no error is raised when trying to access a friend" do
    assert_nothing_raised do
    users(:jason).friends
    end
   end   
   
  test "that creating friendships on a user works" do
    users(:jason).friends << users(:mike)
    users(:jason).friends.reload
    assert users(:jason).friends.include?(users(:mike))
  end
  
  test "that calling to_param on a user returns the profile_name" do
    assert_equal "jasonseifer", users(:jason).to_param
    
  end
end
