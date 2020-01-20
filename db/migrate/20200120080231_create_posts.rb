class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title,             null: false
      t.string :subtitle,          null: false
      t.string :image
      t.text :content,             null: false
      t.timestamps
    end
  end
end
