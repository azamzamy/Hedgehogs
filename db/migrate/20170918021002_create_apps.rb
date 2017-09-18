class CreateApps < ActiveRecord::Migration[5.1]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :avatar
      t.string :desc
      t.string :longdesc
      t.string :tag
      t.string :incentive
      t.string :instructions
      t.json :photos

      t.timestamps
    end
  end
end
