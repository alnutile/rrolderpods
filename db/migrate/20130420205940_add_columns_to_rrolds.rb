class AddColumnsToRrolds < ActiveRecord::Migration
  def change
    add_column :rrolds, :order, :integer
    add_column :rrolds, :description, :text
  end
end
