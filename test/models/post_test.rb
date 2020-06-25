require 'test_helper'

class PostTest < ActiveSupport::TestCase
  setup do
    @post = posts(:valid)
  end

  test 'presence' do
    assert @post.valid?
  end

  test 'validate_title' do
    @post.title = nil
    refute @post.valid?
    assert_not_nil @post.errors[:title]
  end

  test 'validate_content' do
    @post.content = nil
    refute @post.valid?
    assert_not_nil @post.errors[:content]
  end

  test 'associations' do
    check_bidirectional_associations User
  end
end
