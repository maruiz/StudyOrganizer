json.array!(@homeworks) do |homework|
  json.extract! homework, :id
  json.url homework_url(homework, format: :json)
end
