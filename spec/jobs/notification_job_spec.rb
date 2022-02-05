require 'rails_helper'

RSpec.describe NotificationJob, type: :job do
  NotificationJob.perform("It is #{Time.now}, take a glass of water to give you life NOW!")
  pending "add some examples to (or delete) #{__FILE__}"
end
