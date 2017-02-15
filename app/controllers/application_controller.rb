class ApplicationController < ActionController::Base
  include Clearance::Controller
  include Pundit
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def is_signed_in?
    unless signed_in?
      flash[:alert] = "Please sign in first"
      redirect_to root_path
    end
  end
  
  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
