require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "new user" do
    user = User.new(user: 'Test',steps: 1223, distance: 12.33, exercise: 433.22, sleep: 33.22, calories: 1233)
    assert user.valid?
  end
  test "not valid without name" do
  	user = User.new(steps: 4433, distance: 23.22, exercise:44.33, sleep: 22.11, calories: 333)
  	assert_not user.save, "no name validation"
  end
end
