json.extract! profile, :id, :email, :name, :user, :subscriber, :created_at, :updated_at
json.url profile_url(profile, format: :json)
