class Order < ActiveRecord::Base
  belongs_to :client

  has_many :order_items
  has_many :items, through: :order_items

  has_many :item_components
  has_many :components, through: :item_components
end
