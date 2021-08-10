class AddJourToTimeslots < ActiveRecord::Migration[6.0]
  def change
    add_reference :time_slots, :jour, null: false, foreign_key: true
  end
end
