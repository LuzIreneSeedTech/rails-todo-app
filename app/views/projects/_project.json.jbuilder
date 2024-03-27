json.extract! project, :id, :title, :description, :task_id, :created_at, :updated_at
json.url project_url(project, format: :json)
