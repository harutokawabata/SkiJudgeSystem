class ChangeEvents < ActiveRecord::Migration[5.2]
  def up
    change_column :events, :start, :date
    change_column :events, :finish, :date
  end
  def down
    change_column :events, :start, :integer
    change_column :events, :finish, :integer
  end
end
