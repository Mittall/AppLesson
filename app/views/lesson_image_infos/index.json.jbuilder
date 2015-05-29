json.array!(@lesson_image_infos) do |lesson_image_info|
  json.extract! lesson_image_info, :id, :lesson_id, :title, :lesson_image
  json.url lesson_image_info_url(lesson_image_info, format: :json)
end
