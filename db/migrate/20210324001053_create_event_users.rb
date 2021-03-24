class CreateEventUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :event_users do |t|
      t.integer :event_id
      t.integer :user_id
      t.integer :status

      t.timestamps
    end
  end
end
