class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.string :year
      t.datetime :year_released
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
