class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|
      t.string :post_id
      t.string :comment_id

      t.timestamps
    end
  end
end
