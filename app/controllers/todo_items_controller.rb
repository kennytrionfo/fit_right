class TodoItemsController < ApplicationController
#This was the create method before putting in before_action and private methods in below. 
	# def create
	# 	@todo_list = TodoList.find(params[:todo_list_id])
	# 	@todo_item = @todo_list.todo_items.create(params[:todo_item].permit(:content))
	# end

#After updating the create method with before_action and private methods. 
#————————Kenny Trionfo Feb 11,2015————
	before_action :set_todo_list

	def create
		@todo_item = @todo_list.todo_items.create(todo_item_params)
		redirect_to @todo_list 
	end


	private

	def set_todo_list 
		@todo_list = TodoList.find(params[:todo_list_id])
	end

	def todo_item_params
		params[:todo_item].permit(:content)
	end
end
