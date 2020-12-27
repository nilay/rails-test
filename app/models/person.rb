class Person < ApplicationRecord
  self.table_name = "persons"
  include PersonPresenter

  belongs_to :company
  belongs_to :city
end
