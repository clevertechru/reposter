require File.expand_path('lib/gems/socialgate/lib/socialgate')
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

    auth = @user.authorizations.find_by_provider('vkontakte')

    @client = SocialGate::Vkontakte::Client.new(auth.token)
    @vk_user_groups = @client.groups.user_admin_groups(auth.uid)

  end

end
