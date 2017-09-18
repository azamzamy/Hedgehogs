class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :avatar
      t.integer :score
      t.integer :level
      t.integer :upvotes
      t.string :password
      t.string :confirm_password
      t.string :bio

      t.timestamps
    end
  end
end
