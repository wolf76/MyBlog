class ApplicationController < ActionController::Base
  include Clearance::Controller

  # if current_user ?
  #   allow post pages
  # else
  #   redirect_to signed_in

  def require_login
    redirect_to sign_in_path unless signed_in?
  end

end
