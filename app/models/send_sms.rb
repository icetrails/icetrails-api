
class SendSMS
  def self.send_message(message, destination)
    code = ENV['ATT_BEARER_CODE']
    headers = {Authorization: "Bearer #{code}",
               Accept: 'application/json'}
    response = RestClient.post 'https://api.att.com/myMessages/v2/messages', {addresses: "tel:#{destination}", text: message}, headers
    response.code == 201
  end

  def self.receive_messages
  end
end
