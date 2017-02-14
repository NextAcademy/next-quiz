class ApplicationController < ActionController::Base
  include Clearance::Controller
  include Pundit
  protect_from_forgery with: :exception

  def is_signed_in?
    unless signed_in?
      flash[:alert] = "Please sign in first"
      redirect_to root_path
    end
  end

end
