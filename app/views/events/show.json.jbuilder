json.(@event, :id, :user, :description, :deadline, :created_at, :updated_at)
json.locations @event.locations, :lat, :long, :time
json.contacts @event.user.people_to_alert, :id, :name, :phone
json.police do
  json.name "Las Vegas Metro Police Convention Area Command"
  json.address1 "750 Sierra Vista Dr"
  json.address2 "Las Vegas, NV 89169"
  json.phone "(702) 828-6430"
end