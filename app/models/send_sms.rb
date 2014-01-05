
class SendSMS
  def self.send_message(message, destination)
    code = ENV['ATT_BEARER_CODE']
    headers = {Authorization: "Bearer #{code}",
               Accept: 'application/json'}
    response = RestClient.post 'https://api.att.com/myMessages/v2/messages', {addresses: "tel:#{destination}", text: message}, headers
    response.code == 201
  end

  def self.receive_messages
    code = ENV['ATT_BEARER_CODE']
    headers = {Authorization: "Bearer #{code}",
               Accept: 'application/json'}
    response = RestClient.get 'https://api.att.com/myMessages/v2/messages?limit=10&offset=0&isIncoming=true', headers
    return unless response.code == 200
    messages = JSON.parse(response.body)["messageList"]["messages"]
    messages.each do |sms|
      Message.find_or_create_by(identifier: sms["messageId"]) do |message|
        message.from = sms["from"]["value"]
        message.time = DateTime.parse(sms["timeStamp"])
        message.text = sms["text"]
        message.processed = false
      end
    end
  end
end
