class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :user_access_token, :user_instagram_code

  # Check user login status
  def check_login
    unless (session[:access_token] && session[:instagram_code])
      redirect_to login_mains_path
    end
  end

  # load info easy way
  def user_access_token  
    session[:access_token]
  end

  def user_instagram_code    
    session[:instagram_code]
  end

end