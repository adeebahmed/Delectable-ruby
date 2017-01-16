json.extract! report, :id, :dailytotal, :dailysurcharge, :status, :created_at, :updated_at
json.url report_url(report, format: :json)