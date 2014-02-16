class SessionsController < ApplicationController

  def new
    redirect_to '/auth/google_oauth2'
  end


  def create_lite
    auth = request.env["omniauth.auth"]
    user = User.where(:provider => auth['provider'], 
                      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)
# Reset the session after successful login, per
# 2.8 Session Fixation – Countermeasures:
# http://guides.rubyonrails.org/security.html#session-fixation-countermeasures
    reset_session
    session[:user_id] = user.id
    user.add_role :admin if User.count == 1 # make the first user an admin
    if user.email.blank?
      redirect_to edit_user_path(user), :alert => "Please enter your email address."
    else
      redirect_to root_url, :notice => 'Signed in!'
    end

  end

  #http://code.tutsplus.com/articles/how-to-use-omniauth-to-authenticate-your-users--net-22094
  def create
    auth_hash = request.env['omniauth.auth']

    if session[:user_id]
      # Means our user is signed in. Add the authorization to the user
      User.find(session[:user_id]).add_provider(auth_hash)

      render :text => "You can now login using #{auth_hash["provider"].capitalize} too!"
    else
      # Log him in or sign him up
      auth = Authorization.find_or_create(auth_hash)

      # Reset the session after successful login, per
      # 2.8 Session Fixation – Countermeasures:
      # http://guides.rubyonrails.org/security.html#session-fixation-countermeasures
      reset_session
      session[:user_id] = auth.user.id
      if User.count == 1 # make the first user an admin
        auth.user.add_role :admin
      else
        #auth.user.add_role :guest
      end

      if auth.user.email.blank?
        redirect_to edit_user_path(auth.user), :alert => "Please enter your email address."
      else
        redirect_to root_url, :notice => 'Signed in!'
      end
    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end

end
