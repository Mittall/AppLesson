json.array!(@documents) do |document|
  json.extract! document, :id, :lesson_id, :title, :image
  json.url document_url(document, format: :json)
end
