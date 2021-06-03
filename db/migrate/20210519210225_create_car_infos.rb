# frozen_string_literal: true

class CreateCarInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :car_infos do |t|
      t.integer :user_id
      t.string :car_mark
      t.integer :car_number
      t.string :car_lease_info
      t.string :misc_info
      t.string :car_type

      t.timestamps
    end
  end
end
