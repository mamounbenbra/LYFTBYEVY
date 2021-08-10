class DropJoursTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :jours
  end
end
