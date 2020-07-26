class AddJobrequestToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :jobrequest, :string
  end
end
