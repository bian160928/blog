class AddThemeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :theme, :string
  end
end
