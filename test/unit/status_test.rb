require 'test_helper'

class StatusTest < ActiveSupport::TestCase
	test "that status requires a content" do
	status = Status.new
	assert !status.save
	assert !status.errors[:content].empty?
	end
	
	test "that status content is at least two letters content" do
	status = Status.new
	status.content = "H"
	assert !status.save
	assert !status.errors[:content].empty?
	end
	
	test "that status has a user id" do
	status = Status.new
	status.content = "Hello"
	assert !status.save
	assert !status.errors[:user_id].empty?
	end
end
