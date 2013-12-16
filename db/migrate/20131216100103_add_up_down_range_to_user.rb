class AddUpDownRangeToUser < ActiveRecord::Migration
  def change
    add_column :users, :up_range, :float
    add_column :users, :down_range, :float
  end
end
