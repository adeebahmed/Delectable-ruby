json.extract! report, :id, :total, :surcharge, :status, :created_at, :updated_at
json.url report_url(report, format: :json)