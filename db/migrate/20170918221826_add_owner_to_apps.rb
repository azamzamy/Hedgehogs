class AddOwnerToApps < ActiveRecord::Migration[5.1]
  def change
	add_reference :apps, :users, index: true, foreign_key: true
  end
end
