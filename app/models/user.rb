class User < ActiveRecord::Base
  scope :subscribed, -> { where(subscriber:true)}
  has_many :events
  has_many :contacts

  def people_to_alert
    contacts.map do |contact|
      contact.contact
    end
  end
end
