class RemoveFieldProductIdIdFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :productId, :integer
  end
end
