json.extract! project, :id, :title, :summary, :body, :url, :repo, :completion_date, :created_at, :updated_at
json.url project_url(project, format: :json)
