class CitiesController < ApplicationController

  def index
    cities = apply_pagination(City.all)
    render json: {
        cities: cities.as_api_response(:base),
        pagination: pagination(cities)
    }, status: :ok

  end
end