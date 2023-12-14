json.extract! appointment, :id, :user_id, :pet_id, :vet_id, :date, :description, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
