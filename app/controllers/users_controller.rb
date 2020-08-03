class UsersController < ApplicationController
  def detail
    @user = User.find_by(id: params[:id])
  end

  def after_sign_up_path_for(resource)
    "/user/#{current_user.id}"
  end
end
