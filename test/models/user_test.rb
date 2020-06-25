require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:user)
  end

  test 'presence' do
    assert @user.valid?
  end

  test 'validate_name' do
    @user.name = nil
    refute @user.valid?
    assert_not_nil @user.errors[:name]
  end

  test 'validate_email' do
    @user.email = nil
    refute @user.valid?
    assert_not_nil @user.errors[:email]
  end

  test 'associations' do
    check_bidirectional_associations User
  end
end
