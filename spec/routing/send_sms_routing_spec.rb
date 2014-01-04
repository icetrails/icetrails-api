require "spec_helper"

describe SendSmsController do
  describe "routing" do

    it "routes to #index" do
      get("/send_sms").should route_to("send_sms#index")
    end
    it "routes to #create" do
      post("/send_sms").should route_to("send_sms#create")
    end

  end
end
