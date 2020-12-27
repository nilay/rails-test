class CompaniesController < ApplicationController

  def index
    companies = apply_pagination(Company.all)
    render json: {
        companies: companies.as_api_response(:base),
        pagination: pagination(companies)
    }, status: :ok

  end
end