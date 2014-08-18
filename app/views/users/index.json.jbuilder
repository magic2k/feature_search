json.array!(@users) do |user|
  json.extract! user, :id, :string, :name
  json.url user_url(user, format: :json)
end
