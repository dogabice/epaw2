json.extract! pet, :id, :pet_name, :pet_birthdate, :animal_species, :pet_kind, :user_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
