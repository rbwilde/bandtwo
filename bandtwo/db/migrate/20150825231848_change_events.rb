class ChangeEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :date
  	add_column :events, :date, :date
  end
end
