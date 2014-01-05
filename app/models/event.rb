class Event < ActiveRecord::Base
  belongs_to :user
  has_many :locations
  scope :expired, -> { where("deadline < ?", DateTime.now) }
  def send_alert
    path = Rails.application.routes.url_helpers.event_path(self)
    url = "icetrails://api.icetrails.com#{path}.json"
    user.people_to_alert.each do |person|
      SendSMS.send_message("#{user.name} may be in trouble! Click for more info: #{url}", person.phone)
    end
  end

  def self.check_for_expired
    Event.expired.where(pinged_at: nil).each do |event|
      SendSMS.send_message("Are you OK?", event.user.phone)
      event.pinged_at = DateTime.now
      event.save!
    end
  end
end
