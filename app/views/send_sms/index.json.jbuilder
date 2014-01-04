json.array!(@send_sms) do |send_sm|
  json.extract! send_sm, :id
  json.url send_sm_url(send_sm, format: :json)
end
