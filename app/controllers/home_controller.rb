class HomeController < ApplicationController

  def index

    #if current_user && (current_user.has_role?(:admin) || current_user.has_role?(:user))
    #  redirect_to projects_path
    #end

  end
end
