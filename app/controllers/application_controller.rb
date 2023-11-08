# frozen_string_literal: true

class ApplicationController < ActionController::Base

  include Pundit::Authorization

  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_to root_path, alert: exception.message
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
