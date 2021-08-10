class CreateJours < ActiveRecord::Migration[6.0]
  def change
    create_table :jours do |t|
      t.date :day

      t.timestamps
    end
  end
end
