class AddRoleToUsers < ActiveRecord::Migration[5.1]
  def change
    # Note that setting default to false isn't strictly necessary, since it would be nil by default
    # (which is still technically false)
    add_column :users, :role, :integer, default: 1
  end
end
