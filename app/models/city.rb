class City < ApplicationRecord
  include CityPresenter
  has_many :persons

end
