class AddDetailsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_status, :integer, default: 0 #イベントの受付状態を表す0が準備中で1が受付中
    add_column :events, :date, :date
    add_column :events, :price, :integer
    add_column :events, :category1, :string
    add_column :events, :category2, :string
    add_column :events, :category3, :string
    add_column :events, :category4, :string
    add_column :events, :category5, :string
    add_column :events, :audience, :boolean, default: 0 #audienceはオーディエンスジャッジの存在があるかないか？
    add_column :events, :spj, :boolean, default: 0  #spjはスペシャルジャッジの略で0があり1がなし
    add_column :events, :method, :boolean, default: 0 #オンライン大会orリアルタイム大会か？
  end
end
