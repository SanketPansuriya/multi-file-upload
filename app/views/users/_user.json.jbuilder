json.extract! user, :id, :name, :email, :avatar, :created_at, :updated_at
json.url user_url(user, format: :json)
json.avatar do
  json.array!(user.avatar) do |avatar|
    json.id avatar.id
    json.url url_for(avatar)
  end
end
