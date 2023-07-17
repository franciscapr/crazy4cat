json.extract! post, :id, :title, :description, :place, :when_wen, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
