require "test_helper"

class TodoListsControllerTest < ActionController::TestCase

  def todo_list
    @todo_list ||= todo_lists :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:todo_lists)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('TodoList.count') do
      post :create, todo_list: { description: @todo_list.description, title: @todo_list.title }
    end

    assert_redirected_to todo_list_path(assigns(:todo_list))
  end

  def test_show
    get :show, id: todo_list
    assert_response :success
  end

  def test_edit
    get :edit, id: todo_list
    assert_response :success
  end

  def test_update
    put :update, id: todo_list, todo_list: { description: @todo_list.description, title: @todo_list.title }
    assert_redirected_to todo_list_path(assigns(:todo_list))
  end

  def test_destroy
    assert_difference('TodoList.count', -1) do
      delete :destroy, id: todo_list
    end

    assert_redirected_to todo_lists_path
  end
end
