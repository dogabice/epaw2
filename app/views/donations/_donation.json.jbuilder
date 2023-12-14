json.extract! donation, :id, :donation_date, :donation_amount, :created_at, :updated_at
json.url donation_url(donation, format: :json)
