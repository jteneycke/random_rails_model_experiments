class CreateOrderItemComponents < ActiveRecord::Migration
  def change
    create_table :order_item_components do |t|
      t.integer :order_item_id
      t.integer :component_id

      t.timestamps
    end
  end
end
