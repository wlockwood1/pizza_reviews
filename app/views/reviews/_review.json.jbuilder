json.extract! review, :id, :review_date, :name, :address, :score, :url, :created_at, :updated_at
json.url review_url(review, format: :json)
