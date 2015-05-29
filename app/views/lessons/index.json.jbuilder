json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :name, :category, :level
  json.url lesson_url(lesson, format: :json)
end
