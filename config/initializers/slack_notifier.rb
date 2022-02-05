require 'slack-notifier'

module SlackNotifier
    # CLIENT = Slack::Notifier.new Rails.application.credentials.slack['https://hooks.slack.com/services/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']
    notifier = Slack::Notifier.new "https://hooks.slack.com/services/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" do
      defaults channel: "#water-reminder",
               username: "flonsie17"
    end
  end