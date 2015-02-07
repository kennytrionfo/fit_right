class TodoItemsController < ApplicationController
	before_action :set_todo_list

	def create
		@todo_list = TodoList.find(params[:todo_list_id])
		redirect_to @todo_list 
		end

# this controller needs to be finnished. 

	private

	def set_todo_list 
		@todo_list = TodoList.find(params[:todo_list_id])
	end

	def todo_item_params
		params[:todo_item].permit(:content)
	end
end