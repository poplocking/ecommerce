# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[firstName lastName email address])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[firstName lastName address provinces])
  end

  def index
    @provinces = Province.all
  end
end
