class Api::TaskController < Api::BaseController

  def user_tasks
    puts "==== inside the user_tasks method ======"
    render json: { current_user.tasks }
  end

end
