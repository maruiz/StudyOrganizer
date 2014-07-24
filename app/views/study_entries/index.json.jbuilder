json.array!(@study_entries) do |study_entry|
  json.extract! study_entry, :id, :start, :end, :task_id
  json.url study_entry_url(study_entry, format: :json)
end
