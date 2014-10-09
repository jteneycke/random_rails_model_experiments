class OrderItemComponent < ActiveRecord::Base
  belongs_to :order_item
  belongs_to :component
end
