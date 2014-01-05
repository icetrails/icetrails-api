class Message < ActiveRecord::Base
  scope :unprocessed, -> { where(processed: false) }

  def self.process_messages
    Message.unprocessed.select { |m| m.text.downcase.start_with?("y") }.each do |message|
      from = message.from
      user = User.where(phone: from).first
      user.events.each do |event|
        event.ok_at = DateTime.now
        event.save
      end
      message.processed = true
      message.save
    end
  end
end
