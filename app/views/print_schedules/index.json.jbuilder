json.array!(@print_schedules) do |print_schedule|
  json.extract! print_schedule, :id
  json.url print_schedule_url(print_schedule, format: :json)
end
