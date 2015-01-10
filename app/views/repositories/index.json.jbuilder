json.array!(@repositories) do |repository|
  json.extract! repository, :id, :name, :url, :enabled, :user_id
  json.url repository_url(repository, format: :json)
end
