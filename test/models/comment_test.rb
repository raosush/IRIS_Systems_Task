require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  setup do
    @comment = comments(:comment)
  end

  test 'presence' do
    assert @comment.valid?
  end

  test 'validate_comment' do
    @comment.comment = nil
    refute @comment.valid?
    assert_not_nil @comment.errors[:comment]
  end

  test 'associations' do
    check_bidirectional_associations Comment
  end
end
