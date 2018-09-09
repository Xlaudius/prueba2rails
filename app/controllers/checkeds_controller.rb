class CheckedsController < ApplicationController
  before_action :authenticate_user!

  def create
    @todo = Todo.find(params[:todo_id])
    @checked = Checked.new(todo: @todo, user: current_user)
    if @checked.save
        redirect_to todos_path, notice: 'UYUUUUII! Weeena campeón! una menos!'
    else
        redirect_to todos_path, alert: 'Oopsies!, no se pudo marcar como completada :('
    end
  end
end
