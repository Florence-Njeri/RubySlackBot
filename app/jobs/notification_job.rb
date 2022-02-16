require 'httparty'
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
      random_puns = { 
        0 => "Where did Noah keep his bees? In the ark hives.",
        1 => "An untalented gymast walks into a bar",
        2 => "My grandma is on speed dial and now I call her instagram.",
        3 => "When he proposed to her, she found it very engaging.",
        4 => "If Apple made a car, would it have Windows?",
        5 => "I used to be a baby but I grew out of it."
      }
      notify_slack(
        ENV["WEBHOOK_URL"],
        '#general',
        'Water Reminder Bot',
        "Hey #{name}, wanna hear a joke? \n #{random_puns[rand(6)]} \n It's now time to take a glass of water!!."
      )
    end
end
