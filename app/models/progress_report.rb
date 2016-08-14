class ProgressReport < ActiveRecord::Base
  belongs_to :author, class_name: "Employee", foreign_key: :employee_id
  belongs_to :team, foreign_key: :employee_id
end
