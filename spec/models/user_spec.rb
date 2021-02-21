require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_one(:laptop).through(:user_laptop) }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :employee_number }
end
