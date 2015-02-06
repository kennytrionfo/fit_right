require "test_helper"

class TodoItemTest < ActiveSupport::TestCase

  def todo_item
    @todo_item ||= TodoItem.new
  end

  def test_valid
    assert todo_item.valid?
  end

end
