require "httparty"

class Api::V1::GreetingsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: { message: "Hello, Ruby" }
  end

  def create
    name = params[:name]
    if name.present?
      render json: { message: "Olá, #{name}" }
    else
      render json: { message: "Ow, panguão, ta faltando o 'name'" }, status: :bad_request
    end
  end

  def fetch_user_data
    response = HTTParty.get("https://jsonplaceholder.typicode.com/users")

    if response.success?
      users = JSON.parse(response.body)
      first_user = users.first

      render json: {
        name: first_user["name"],
        email: first_user["email"],
        city: first_user["address"]["city"]
      }
    else
      render json: { error: "Erro ao buscar dado" }, status: :service_unavailable
    end
  end
end
