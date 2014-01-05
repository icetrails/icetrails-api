json.(@event, :id, :user, :description, :deadline, :created_at, :updated_at)
json.locations @event.locations, :lat, :long, :time
json.contacts @event.user.people_to_alert, :id, :name, :phone
