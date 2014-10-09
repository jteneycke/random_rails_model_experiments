class Goal < ActiveRecord::Base
  has_many :children, class_name: "Goal", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Goal"
end
