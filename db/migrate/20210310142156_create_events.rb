class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :event1
      t.string :event2
      t.string :event3
      t.string :event4
      t.string :event5
      t.integer :capacity
      t.integer :start
      t.integer :finish
      t.string :advice
      t.text :introduction

      t.timestamps
    end
  end
end
