json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :admin, :session_key
  json.url user_url(user, format: :json)
end
