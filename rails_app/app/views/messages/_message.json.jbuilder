json.extract! messages, :id, :content, :author, :date, :created_at, :updated_at
json.url message_url(messages, format: :json)
