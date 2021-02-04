json.extract! user, :id, :name, :switch_name, :order, :date, :number_of_times, :created_at, :updated_at
json.url user_url(user, format: :json)
