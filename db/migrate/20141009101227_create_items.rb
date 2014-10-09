class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :base_price
      t.integer :secondary_price

      t.timestamps
    end
  end
end
