class CreateAvailableSchedules < ActiveRecord::Migration
  def change
    create_table :available_schedules do |t|

      t.timestamps null: false
    end
  end
end
