json.extract! comment, :id, :micropost_id, :desc, :created_at, :updated_at
json.url comment_url(comment, format: :json)
