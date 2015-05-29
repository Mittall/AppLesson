json.array!(@answers) do |answer|
  json.extract! answer, :id, :question_id, :correct_answer, :content, :ans_image
  json.url answer_url(answer, format: :json)
end
