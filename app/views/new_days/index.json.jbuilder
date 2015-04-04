json.array!(@new_days) do |new_day|
  json.extract! new_day, :id, :comment, :date
  json.url new_day_url(new_day, format: :json)
end
