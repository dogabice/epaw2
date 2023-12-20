json.extract! health_record, :id, :pet_id, :vet_id, :health_treatments, :health_notes, :created_at, :updated_at
json.url health_record_url(health_record, format: :json)
