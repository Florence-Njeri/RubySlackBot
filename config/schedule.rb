# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :output, "log/cron.log"

every :hour do
    rake "notifications_schedule:create"
  end

# Learn more: http://github.com/javan/whenever
