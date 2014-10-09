class Client < ActiveRecord::Base
  has_many :subordinates, class_name: "Client", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Client"

  has_many :orders
end
