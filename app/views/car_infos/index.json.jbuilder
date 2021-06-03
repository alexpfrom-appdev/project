# frozen_string_literal: true

json.array! @car_infos, partial: 'car_infos/car_info', as: :car_info
