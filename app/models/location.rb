class Location < ActiveRecord::Base
  belongs_to :event

  def self.create_latest_for_event(event)
    token = event.user.token
    headers = { Authorization: "Bearer #{token}", Accept: 'application/json' }
    response = RestClient.get 'https://api.att.com/2/devices/location?requestedAccuracy=10000', headers
    if response.code == 200
      value = JSON.parse(response.body)
      Location.create!(event: event, lat: value["latitude"], long: value["longitude"], time: DateTime.rfc3339(value["timestamp"]))
    end
  end
end
