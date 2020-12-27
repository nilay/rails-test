class Company < ApplicationRecord
  include CompanyPresenter
  has_many :persons
end
