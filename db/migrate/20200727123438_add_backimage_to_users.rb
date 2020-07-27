class AddBackimageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :backimage, :string
  end
end
