json.array!(@questions) do |question|
  json.extract! question, :id, :lesson_id, :name, :content, :que_image
  json.url question_url(question, format: :json)
end
