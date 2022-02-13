class ReminderController < ApplicationController
  def index
    # NotificationJob.perform_now
  end
end