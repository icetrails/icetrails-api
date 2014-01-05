class User < ActiveRecord::Base
  scope :subscribed, -> { where(subscriber:true)}
  has_many :events
end
