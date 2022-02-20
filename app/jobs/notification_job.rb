require 'httparty'
require 'dotenv'
class NotificationJob < ApplicationJob
  queue_as :default

    def notify_slack(webhook_url, channel, username, text)
      HTTParty.post(webhook_url, :body => {
        :channel  => channel,
        :username => username,
        :text     => text
      }.to_json)
    end

    def perform()
      name = "Florence"
      random_puns = [ 
        "Where did Noah keep his bees? In the ark hives.",
        "An untalented gymast walks into a bar",
        "My grandma is on speed dial and now I call her instagram.",
        "When he proposed to her, she found it very engaging.",
        "If Apple made a car, would it have Windows?",
        "I used to be a baby but I grew out of it."
      ]
      notify_slack(
        ENV["WEBHOOK_URL"],
        '#general',
        'Water Reminder Bot',
        "Hey #{name}, wanna hear a joke? \n #{random_puns.sample()} \n It's now time to take a glass of water!!."
      )
    end
end
