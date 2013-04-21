class AddNewColumnSize < ActiveRecord::Migration
  def change
    add_column :rrolds, :size, :integer
  end
end
