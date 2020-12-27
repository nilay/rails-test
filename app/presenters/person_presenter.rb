module PersonPresenter
  extend ActiveSupport::Concern

  included do
    acts_as_api

    api_accessible :base do |t|
      t.add :id
      t.add :name
      t.add :email
      t.add :created_at
      t.add :updated_at
    end

    api_accessible :details, extend: :base do |t|

      t.add :city, template: :base
      t.add :company, template: :base
    end

  end
end

