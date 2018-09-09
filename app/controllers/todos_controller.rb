class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @done = []

    if user_signed_in?
      @done = Checked.select(:user_id, :todo_id).where(:user_id => current_user, :check => true).all
      @done.each do |done_task|
        @done << done_task.todo_id 
      end
      how_many_done = @done.length
    end
  end
end
