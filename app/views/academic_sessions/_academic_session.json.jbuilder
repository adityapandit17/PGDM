json.extract! academic_session, :id, :title, :from, :to, :created_at, :updated_at
json.url academic_session_url(academic_session, format: :json)
