json.array!(@articles) do |article|
  json.extract! article, :id, :heading, :story, :publish_date, :author
  json.url article_url(article, format: :json)
end
