require "test_helper"

class TodoListTest < ActiveSupport::TestCase

  def todo_list
    @todo_list ||= TodoList.new
  end

  def test_valid
    assert todo_list.valid?
  end

end
