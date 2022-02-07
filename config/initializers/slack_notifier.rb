require 'slack-notifier'

module SlackNotifier
    notifier = Slack::Notifier.new ENV["WEBHOOK_URL"] do
      defaults channel: "#water-reminder",
               username: "flonsie17"
    end
  end