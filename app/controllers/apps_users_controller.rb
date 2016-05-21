class AppsUsersController < ApplicationController
  before_action :authenticate_user!

  def create
    app_id = params[:app_id].to_i

    if app_id && App.find_by_id(app_id)
      AppsUser.create(user_id: current_user.id, app_id: app_id)
    end

    render nothing: true
  end
end
