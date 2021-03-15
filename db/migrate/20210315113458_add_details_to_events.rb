class AddDetailsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_status, :integer, default: 0
    add_column :events, :date, :date
    add_column :events, :price, :integer
    add_column :events, :category1, :string
    add_column :events, :category2, :string
    add_column :events, :category3, :string
    add_column :events, :category4, :string
    add_column :events, :category5, :string
    add_column :events, :audience, :boolean, default: 0
    add_column :events, :spg, :boolean, default: 0
  end
end
