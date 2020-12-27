class PersonsController < ApplicationController

  # [GET] /persons
  def index
    persons = apply_pagination(Person.all)
    render json: {
        persons: persons.as_api_response(:base),
        pagination: pagination(persons)
    }, status: :ok
  end

  # [GET] /persons/1
  def show
    person = Person.find_by(id: params[:id])
    if person
      render json: person.as_api_response(:details), status: :ok
    else
      render json: {error: 'Person not found'}, status: 404
    end
  end
end