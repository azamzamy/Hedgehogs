class RemovePasswordFromUsers < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :password
  	remove_column :users, :confirm_password
  end
end
