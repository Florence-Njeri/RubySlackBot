namespace :notifications_schedule do
  desc "Send hourly remonders to drink water in Slack"
  task :schedule_slack_notifications => :environment do
    NotificationJob.perform_now
  end

end
