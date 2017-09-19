class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
	add_column :users, :f_name, :string
	add_column :users, :l_name, :string
	add_column :users, :avatar, :string
	add_column :users, :bio, :string
	add_column :users, :score, :integer
	add_column :users, :level, :integer
	add_column :users, :upvotes, :integer
  end
end
