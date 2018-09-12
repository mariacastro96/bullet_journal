class Log < ApplicationRecord
  belongs_to :type
  belongs_to :state
  belongs_to :daily_log_id
  belongs_to :monthly_log_id
  belongs_to :monthly_type_id
  belongs_to :future_month_id
  belongs_to :custom_id
end
