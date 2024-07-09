json.extract! post, :id, :title, :content, :post_time, :created_at, :updated_at
json.url post_url(post, format: :json)
