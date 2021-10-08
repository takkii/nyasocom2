require 'rails_helper'

RSpec.describe "Notifications", type: :request do
  describe "GET /list" do
    it "returns http success" do
      get "/notification/list"
      expect(response).to have_http_status(:success)
    end
  end

end
