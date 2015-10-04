class AddFieldsToAvailableSchedules < ActiveRecord::Migration
  def change
  	add_column :available_schedules, :program_leader_id, :integer
  	add_column :available_schedules, :start_date, :timestamp
  	add_column :available_schedules, :end_date, :timestamp
  end
end
