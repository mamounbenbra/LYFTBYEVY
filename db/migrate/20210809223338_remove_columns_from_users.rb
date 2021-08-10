class RemoveColumnsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :start1
    remove_column :users, :start2
    remove_column :users, :start3
    remove_column :users, :start4
    remove_column :users, :start5
    remove_column :users, :start6
    remove_column :users, :end1
    remove_column :users, :end2
    remove_column :users, :end3
    remove_column :users, :end4
    remove_column :users, :end5
    remove_column :users, :end6
    remove_column :users, :location

  end
end


