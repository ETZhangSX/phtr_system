json.extract! report, :id, :address, :size, :location, :district, :repair_priority, :user_id, :created_at, :updated_at
json.url report_url(report, format: :json)
