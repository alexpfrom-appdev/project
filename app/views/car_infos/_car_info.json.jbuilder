# frozen_string_literal: true

json.extract! car_info, :id, :user_id, :car_mark, :car_number, :car_lease_info, :misc_info, :car_type, :created_at,
              :updated_at
json.url car_info_url(car_info, format: :json)
