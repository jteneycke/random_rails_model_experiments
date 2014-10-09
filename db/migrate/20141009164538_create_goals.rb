class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :parent_id
      t.string :name
      t.text :description
      t.datetime :due

      t.timestamps
    end
  end
end
