class RemoveNameFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :name, :string
  end
end
