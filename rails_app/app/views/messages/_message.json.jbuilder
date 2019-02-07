json.extract! message, :id, :content, :author, :date, :created_at, :updated_at
json.url message_url(message, format: :json)
