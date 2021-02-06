json.extract! ticket, :id, :plan_id, :name, :switch_name, :number_of_times, :order, :comment, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
