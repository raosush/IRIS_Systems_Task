class ApplicationController < ActionController::Base
  def log_activity
    al = ActivityLog.new
    al.user_id = current_user.id
    al.controller = controller_path
    al.action = action_name
    al.params = params.to_json
    al.save
  end
end
