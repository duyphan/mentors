json.array!(@example_posts) do |example_post|
  json.extract! example_post, :id, :title, :content
  json.url example_post_url(example_post, format: :json)
end
