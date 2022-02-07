# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :output, "/path/to/my/cron_log.log"

every 1.minute do
    # NotificationJob.set.perform_later(self)
    runner "NotificationJob.perform("It is #{Time.now}, take a glass of water to give you life NOW!")"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
