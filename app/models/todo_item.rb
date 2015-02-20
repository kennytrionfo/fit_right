class TodoItem < ActiveRecord::Base
  belongs_to :todo_list

  def completed? # If it's completed, the completed_at field should not be blank. 
	!completed_at.blank?  	
  end
end
