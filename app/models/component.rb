class Component < ActiveRecord::Base
  has_many :order_item_components
  has_many :order_items, through: :order_item_components
end
