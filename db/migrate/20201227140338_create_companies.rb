class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name, index: { unique: true }, null: false
      t.timestamps
    end
  end
end
