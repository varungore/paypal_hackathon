json.array!(@available_schedules) do |available_schedule|
  json.extract! available_schedule, :id
  json.url available_schedule_url(available_schedule, format: :json)
end
