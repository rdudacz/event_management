require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "valid user" do
    user = User.new(email: "john@doe.com", password: "pass1239456")
    assert user.valid?
  end

  test "invalid without password" do
    user = User.new(email: "john@doe.com")
    assert_not user.valid?
    assert_not_empty user.errors[:password]
  end

  test "invalid with duplicate email" do
    User.create!(email: "john@doe.com", password: "123456")
    user = User.new(email: "john@doe.com", password: "123456789")
    assert_not user.valid?
    assert_not_empty user.errors[:email]
  end

end
