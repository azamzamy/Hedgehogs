class AddEmailToApps < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :email, :string
  end
end
