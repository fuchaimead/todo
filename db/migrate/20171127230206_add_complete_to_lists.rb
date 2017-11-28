class AddCompleteToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :complete, :boolean
  end
end
