require 'rails_helper'

RSpec.describe "Reminders", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/reminder/index"
      expect(response).to have_http_status(:success)
    end
  end

end
