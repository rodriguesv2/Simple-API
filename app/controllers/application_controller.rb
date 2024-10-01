class ApplicationController < ActionController::API
  before_action :authenticate_user!, except: [ :create, :new ]

  def authenticate_user!
    request.headers["Authorization"].present? ? super : render_unauthorized
  end

  private

  def render_unauthorized
    render json: { error: "Você precisa logar para continuar" }, status: :unauthorized
  end
end
