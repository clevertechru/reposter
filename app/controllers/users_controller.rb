class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all
  end

    def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user], :as => (current_user.has_role?(:admin) ? :admin : current_user_role))
      redirect_to @user
    else
      render :edit
    end
  end


def show
    @user = User.find(params[:id])
  end

end
