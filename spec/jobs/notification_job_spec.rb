require 'rails_helper'

RSpec.describe NotificationJob, type: :job do
  NotificationJob.perform()
  pending "add some examples to (or delete) #{__FILE__}"
end
