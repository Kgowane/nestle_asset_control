class User < ApplicationRecord
  has_one :user_laptop
  has_one :laptop, through: :user_laptop

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :employee_number
end
