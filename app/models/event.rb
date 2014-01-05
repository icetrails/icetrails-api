class Event < ActiveRecord::Base
  belongs_to :user
  has_many :locations

  def send_alert
    path = Rails.application.routes.url_helpers.event_path(self)
    url = "icetrails://api.icetrails.com#{path}.json"
    user.people_to_alert.each do |person|
      SendSMS.send_message("#{user.name} may be in trouble! Click for more info: #{url}", person.phone)
    end
  end
end
