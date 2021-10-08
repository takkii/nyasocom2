json.extract! blog, :id, :days, :title, :memo, :created_at, :updated_at
json.url blog_url(blog, format: :json)
