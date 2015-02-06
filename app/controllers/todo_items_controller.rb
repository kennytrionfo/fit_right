class TodoItemsController < ApplicationController

	def create
		@todo_list = TodoList.find(params[:todo_list_id])
		@todo_item = @todo_list.todo_items.create(params[:todo_item].permit(:content))
	end


end
