require_relative '../model'

class PaylocityApi::Onboarding < PaylocityApi::Model
  endpoint :employees

  id :employee_id

  # has_many :earnings
  # has_many :deductions
end