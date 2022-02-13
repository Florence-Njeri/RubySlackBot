namespace :notifications_schedule do
  desc "Send hourly remonders to drink water in Slack"
  task :create => [ :environment ] do
  # task test: :environment do
    NotificationJob.perform_now
  end

end
