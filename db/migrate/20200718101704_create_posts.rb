class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string   :name
      t.string   :title, null: false
      t.text     :music, null: false
      t.timestamps
    end
  end
end
