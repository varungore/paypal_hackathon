json.array!(@curriculums) do |curriculum|
  json.extract! curriculum, :id
  json.url curriculum_url(curriculum, format: :json)
end
