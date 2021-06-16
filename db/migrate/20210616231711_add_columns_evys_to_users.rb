class AddColumnsEvysToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :start1, :date
    add_column :users, :end1, :date
    add_column :users, :start2, :date
    add_column :users, :end2, :date
    add_column :users, :start3, :date
    add_column :users, :end3, :date
    add_column :users, :start4, :date
    add_column :users, :end4, :date
    add_column :users, :start5, :date
    add_column :users, :end5, :date
    add_column :users, :start6, :date
    add_column :users, :end6, :date
  end
end
