class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @done = []

    if user_signed_in?
      @done = Checked.select(:user_id, :todo_id).where(:user_id => current_user, :check => true).all
      @done.each do |task|
        @done << task.todo_id 
      end
    end
  end
end
