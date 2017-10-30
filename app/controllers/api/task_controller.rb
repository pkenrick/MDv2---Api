class Api::TaskController < Api::BaseController
  skip_before_action :verify_authenticity_token

  def user_tasks
    puts "==== inside the user_tasks method ======"
    puts "==== params: #{params}"
    render json: { tasks: current_user.tasks.where(list_type: params[:list_type]) }
  end

end
