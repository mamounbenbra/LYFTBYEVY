class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :ville
      t.date :start
      t.date :end
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
