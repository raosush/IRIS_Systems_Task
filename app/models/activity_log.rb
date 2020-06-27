class ActivityLog < ApplicationRecord
  def self.activity_report
    ActivityLog.where(updated_at: (Time.now - 1.week)..Time.now).group(:controller, :action).count.to_json
  end
end