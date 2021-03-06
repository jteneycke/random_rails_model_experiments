class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item

  has_many :order_item_components
  has_many :components, through: :order_item_components
end
