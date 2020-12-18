class AddStaffToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :staff, :Boolean, :default => false
  end
end
