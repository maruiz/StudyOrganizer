json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :course_id, :type, :due_date, :estimated_score
  json.url task_url(task, format: :json)
end
